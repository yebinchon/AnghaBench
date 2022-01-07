
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct format_field {int dummy; } ;
struct event_format {int dummy; } ;


 struct format_field* pevent_find_any_field (struct event_format*,char const*) ;
 int pevent_read_number_field (struct format_field*,void*,unsigned long long*) ;

unsigned long long
raw_field_value(struct event_format *event, const char *name, void *data)
{
 struct format_field *field;
 unsigned long long val;

 field = pevent_find_any_field(event, name);
 if (!field)
  return 0ULL;

 pevent_read_number_field(field, data, &val);

 return val;
}
