
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct format_field {int name; struct format_field* next; } ;
struct TYPE_2__ {struct format_field* fields; } ;
struct event_format {TYPE_1__ format; } ;


 scalar_t__ strcmp (int ,char const*) ;

struct format_field *
pevent_find_field(struct event_format *event, const char *name)
{
 struct format_field *format;

 for (format = event->format.fields;
      format; format = format->next) {
  if (strcmp(format->name, name) == 0)
   break;
 }

 return format;
}
