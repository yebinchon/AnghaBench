
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct filter_type {int dummy; } ;
struct event_filter {int filters; } ;


 struct filter_type* find_filter_type (struct event_filter*,int) ;

int pevent_event_filtered(struct event_filter *filter,
     int event_id)
{
 struct filter_type *filter_type;

 if (!filter->filters)
  return 0;

 filter_type = find_filter_type(filter, event_id);

 return filter_type ? 1 : 0;
}
