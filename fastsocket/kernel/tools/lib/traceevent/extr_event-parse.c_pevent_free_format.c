
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int args; struct event_format* format; } ;
struct event_format {TYPE_1__ print_fmt; int format; struct event_format* system; struct event_format* name; } ;


 int free (struct event_format*) ;
 int free_args (int ) ;
 int free_formats (int *) ;

void pevent_free_format(struct event_format *event)
{
 free(event->name);
 free(event->system);

 free_formats(&event->format);

 free(event->print_fmt.format);
 free_args(event->print_fmt.args);

 free(event);
}
