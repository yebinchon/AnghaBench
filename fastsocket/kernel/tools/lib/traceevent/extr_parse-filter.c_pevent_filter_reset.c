
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event_filter {int filters; int * event_filters; } ;


 int free (int *) ;
 int free_filter_type (int *) ;

void pevent_filter_reset(struct event_filter *filter)
{
 int i;

 for (i = 0; i < filter->filters; i++)
  free_filter_type(&filter->event_filters[i]);

 free(filter->event_filters);
 filter->filters = 0;
 filter->event_filters = ((void*)0);
}
