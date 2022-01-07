
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pevent_record {int data; } ;
struct format_field {int flags; int size; } ;
struct event_format {int dummy; } ;


 int FIELD_IS_SIGNED ;
 struct format_field comm ;
 char* get_comm (struct event_format*,struct pevent_record*) ;
 int pevent_read_number_field (struct format_field*,int ,unsigned long long*) ;

__attribute__((used)) static unsigned long long
get_value(struct event_format *event,
   struct format_field *field, struct pevent_record *record)
{
 unsigned long long val;


 if (field == &comm) {
  const char *name;

  name = get_comm(event, record);
  return (unsigned long)name;
 }

 pevent_read_number_field(field, record->data, &val);

 if (!(field->flags & FIELD_IS_SIGNED))
  return val;

 switch (field->size) {
 case 1:
  return (char)val;
 case 2:
  return (short)val;
 case 4:
  return (int)val;
 case 8:
  return (long long)val;
 }
 return val;
}
