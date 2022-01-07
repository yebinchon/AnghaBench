
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct format_field {int dummy; } ;
struct TYPE_2__ {int common_fields; int nr_common; } ;
struct event_format {TYPE_1__ format; int name; } ;


 struct format_field** get_event_fields (char*,int ,int ,int ) ;

struct format_field **pevent_event_common_fields(struct event_format *event)
{
 return get_event_fields("common", event->name,
    event->format.nr_common,
    event->format.common_fields);
}
