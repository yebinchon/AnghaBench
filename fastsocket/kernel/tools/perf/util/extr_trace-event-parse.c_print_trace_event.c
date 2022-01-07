
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pevent {int dummy; } ;
struct event_format {int dummy; } ;


 int event_format__print (struct event_format*,int,void*,int) ;
 struct event_format* pevent_find_event (struct pevent*,int) ;
 int trace_parse_common_type (struct pevent*,void*) ;
 int warning (char*,int) ;

void print_trace_event(struct pevent *pevent, int cpu, void *data, int size)
{
 int type = trace_parse_common_type(pevent, data);
 struct event_format *event = pevent_find_event(pevent, type);

 if (!event) {
  warning("ug! no event found for type %d", type);
  return;
 }

 event_format__print(event, cpu, data, size);
}
