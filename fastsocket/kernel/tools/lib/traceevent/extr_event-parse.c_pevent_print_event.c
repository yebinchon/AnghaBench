
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_seq {int dummy; } ;
struct pevent_record {unsigned long ts; scalar_t__ size; int cpu; void* data; } ;
struct pevent {int flags; scalar_t__ latency_format; } ;
struct event_format {int name; } ;


 unsigned long NSECS_PER_SEC ;
 unsigned long NSECS_PER_USEC ;
 int PEVENT_NSEC_OUTPUT ;
 int do_warning (char*,int) ;
 char* find_cmdline (struct pevent*,int) ;
 int parse_common_pid (struct pevent*,void*) ;
 int pevent_data_lat_fmt (struct pevent*,struct trace_seq*,struct pevent_record*) ;
 int pevent_event_info (struct trace_seq*,struct event_format*,struct pevent_record*) ;
 struct event_format* pevent_find_event (struct pevent*,int) ;
 int strlen (int ) ;
 int trace_parse_common_type (struct pevent*,void*) ;
 int trace_seq_printf (struct trace_seq*,char*,...) ;

void pevent_print_event(struct pevent *pevent, struct trace_seq *s,
   struct pevent_record *record)
{
 static char *spaces = "                    ";
 struct event_format *event;
 unsigned long secs;
 unsigned long usecs;
 unsigned long nsecs;
 const char *comm;
 void *data = record->data;
 int type;
 int pid;
 int len;
 int p;

 secs = record->ts / NSECS_PER_SEC;
 nsecs = record->ts - secs * NSECS_PER_SEC;

 if (record->size < 0) {
  do_warning("ug! negative record size %d", record->size);
  return;
 }

 type = trace_parse_common_type(pevent, data);

 event = pevent_find_event(pevent, type);
 if (!event) {
  do_warning("ug! no event found for type %d", type);
  return;
 }

 pid = parse_common_pid(pevent, data);
 comm = find_cmdline(pevent, pid);

 if (pevent->latency_format) {
  trace_seq_printf(s, "%8.8s-%-5d %3d",
         comm, pid, record->cpu);
  pevent_data_lat_fmt(pevent, s, record);
 } else
  trace_seq_printf(s, "%16s-%-5d [%03d]", comm, pid, record->cpu);

 if (pevent->flags & PEVENT_NSEC_OUTPUT) {
  usecs = nsecs;
  p = 9;
 } else {
  usecs = (nsecs + 500) / NSECS_PER_USEC;
  p = 6;
 }

 trace_seq_printf(s, " %5lu.%0*lu: %s: ", secs, p, usecs, event->name);


 len = strlen(event->name);
 if (len < 20)
  trace_seq_printf(s, "%.*s", 20 - len, spaces);

 pevent_event_info(s, event, record);
}
