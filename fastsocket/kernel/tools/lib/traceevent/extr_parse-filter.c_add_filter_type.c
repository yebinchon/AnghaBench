
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct filter_type {int event_id; int * filter; int event; } ;
struct event_filter {int filters; int pevent; struct filter_type* event_filters; } ;


 int die (char*) ;
 struct filter_type* find_filter_type (struct event_filter*,int) ;
 int memmove (struct filter_type*,struct filter_type*,int) ;
 int pevent_find_event (int ,int) ;
 struct filter_type* realloc (struct filter_type*,int) ;

__attribute__((used)) static struct filter_type *
add_filter_type(struct event_filter *filter, int id)
{
 struct filter_type *filter_type;
 int i;

 filter_type = find_filter_type(filter, id);
 if (filter_type)
  return filter_type;

 filter->event_filters = realloc(filter->event_filters,
     sizeof(*filter->event_filters) *
     (filter->filters + 1));
 if (!filter->event_filters)
  die("Could not allocate filter");

 for (i = 0; i < filter->filters; i++) {
  if (filter->event_filters[i].event_id > id)
   break;
 }

 if (i < filter->filters)
  memmove(&filter->event_filters[i+1],
   &filter->event_filters[i],
   sizeof(*filter->event_filters) *
   (filter->filters - i));

 filter_type = &filter->event_filters[i];
 filter_type->event_id = id;
 filter_type->event = pevent_find_event(filter->pevent, id);
 filter_type->filter = ((void*)0);

 filter->filters++;

 return filter_type;
}
