
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_seq {int dummy; } ;
struct pevent_record {int dummy; } ;
struct format_field {int dummy; } ;
struct event_format {int dummy; } ;


 int get_field_val (struct trace_seq*,struct format_field*,char const*,struct pevent_record*,unsigned long long*,int) ;
 struct format_field* pevent_find_field (struct event_format*,char const*) ;

int pevent_get_field_val(struct trace_seq *s, struct event_format *event,
    const char *name, struct pevent_record *record,
    unsigned long long *val, int err)
{
 struct format_field *field;

 if (!event)
  return -1;

 field = pevent_find_field(event, name);

 return get_field_val(s, field, name, record, val, err);
}
