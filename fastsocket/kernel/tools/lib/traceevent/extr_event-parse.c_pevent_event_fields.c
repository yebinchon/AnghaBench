
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct format_field {int dummy; } ;
struct TYPE_2__ {int fields; int nr_fields; } ;
struct event_format {TYPE_1__ format; int name; } ;


 struct format_field** get_event_fields (char*,int ,int ,int ) ;

struct format_field **pevent_event_fields(struct event_format *event)
{
 return get_event_fields("event", event->name,
    event->format.nr_fields,
    event->format.fields);
}
