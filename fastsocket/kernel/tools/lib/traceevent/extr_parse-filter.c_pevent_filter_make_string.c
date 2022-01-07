
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct filter_type {int filter; } ;
struct event_filter {int filters; } ;


 char* arg_to_str (struct event_filter*,int ) ;
 struct filter_type* find_filter_type (struct event_filter*,int) ;

char *
pevent_filter_make_string(struct event_filter *filter, int event_id)
{
 struct filter_type *filter_type;

 if (!filter->filters)
  return ((void*)0);

 filter_type = find_filter_type(filter, event_id);

 if (!filter_type)
  return ((void*)0);

 return arg_to_str(filter, filter_type->filter);
}
