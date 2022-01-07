
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pevent {int dummy; } ;
struct event_filter {struct pevent* pevent; } ;


 struct event_filter* malloc_or_die (int) ;
 int memset (struct event_filter*,int ,int) ;
 int pevent_ref (struct pevent*) ;

struct event_filter *pevent_filter_alloc(struct pevent *pevent)
{
 struct event_filter *filter;

 filter = malloc_or_die(sizeof(*filter));
 memset(filter, 0, sizeof(*filter));
 filter->pevent = pevent;
 pevent_ref(pevent);

 return filter;
}
