
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_seq {int dummy; } ;
struct pevent_record {int data; } ;
struct format_field {int dummy; } ;
struct event_format {int dummy; } ;


 struct format_field* pevent_find_field (struct event_format*,char const*) ;
 scalar_t__ pevent_read_number_field (struct format_field*,int ,unsigned long long*) ;
 int trace_seq_printf (struct trace_seq*,char const*,...) ;

int pevent_print_num_field(struct trace_seq *s, const char *fmt,
      struct event_format *event, const char *name,
      struct pevent_record *record, int err)
{
 struct format_field *field = pevent_find_field(event, name);
 unsigned long long val;

 if (!field)
  goto failed;

 if (pevent_read_number_field(field, record->data, &val))
  goto failed;

 return trace_seq_printf(s, fmt, val);

 failed:
 if (err)
  trace_seq_printf(s, "CAN'T FIND FIELD \"%s\"", name);
 return -1;
}
