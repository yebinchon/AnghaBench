
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event_filter {int pevent; } ;


 int free (struct event_filter*) ;
 int pevent_filter_reset (struct event_filter*) ;
 int pevent_unref (int ) ;

void pevent_filter_free(struct event_filter *filter)
{
 pevent_unref(filter->pevent);

 pevent_filter_reset(filter);

 free(filter);
}
