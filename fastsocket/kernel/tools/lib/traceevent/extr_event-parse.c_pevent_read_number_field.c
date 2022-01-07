
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct format_field {int size; int offset; TYPE_1__* event; } ;
struct TYPE_2__ {int pevent; } ;


 unsigned long long pevent_read_number (int ,void const*,int) ;

int pevent_read_number_field(struct format_field *field, const void *data,
        unsigned long long *value)
{
 if (!field)
  return -1;
 switch (field->size) {
 case 1:
 case 2:
 case 4:
 case 8:
  *value = pevent_read_number(field->event->pevent,
         data + field->offset, field->size);
  return 0;
 default:
  return -1;
 }
}
