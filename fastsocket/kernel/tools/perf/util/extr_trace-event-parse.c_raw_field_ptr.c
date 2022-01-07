
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct format_field {int flags; int offset; } ;
struct event_format {int dummy; } ;


 int FIELD_IS_DYNAMIC ;
 struct format_field* pevent_find_any_field (struct event_format*,char const*) ;

void *raw_field_ptr(struct event_format *event, const char *name, void *data)
{
 struct format_field *field;

 field = pevent_find_any_field(event, name);
 if (!field)
  return ((void*)0);

 if (field->flags & FIELD_IS_DYNAMIC) {
  int offset;

  offset = *(int *)(data + field->offset);
  offset &= 0xffff;

  return data + offset;
 }

 return data + field->offset;
}
