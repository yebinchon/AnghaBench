
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pevent_record {int dummy; } ;
struct pevent {int dummy; } ;
struct filter_type {int filter; int event; } ;
struct event_filter {int filters; struct pevent* pevent; } ;


 int FILTER_MATCH ;
 int FILTER_MISS ;
 int FILTER_NOEXIST ;
 int FILTER_NONE ;
 struct filter_type* find_filter_type (struct event_filter*,int) ;
 int pevent_data_type (struct pevent*,struct pevent_record*) ;
 scalar_t__ test_filter (int ,int ,struct pevent_record*) ;

int pevent_filter_match(struct event_filter *filter,
   struct pevent_record *record)
{
 struct pevent *pevent = filter->pevent;
 struct filter_type *filter_type;
 int event_id;

 if (!filter->filters)
  return FILTER_NONE;

 event_id = pevent_data_type(pevent, record);

 filter_type = find_filter_type(filter, event_id);

 if (!filter_type)
  return FILTER_NOEXIST;

 return test_filter(filter_type->event, filter_type->filter, record) ?
  FILTER_MATCH : FILTER_MISS;
}
