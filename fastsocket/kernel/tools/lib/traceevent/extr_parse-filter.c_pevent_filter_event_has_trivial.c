
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct filter_type {TYPE_2__* filter; } ;
struct event_filter {int filters; } ;
typedef enum filter_trivial_type { ____Placeholder_filter_trivial_type } filter_trivial_type ;
struct TYPE_3__ {int value; } ;
struct TYPE_4__ {scalar_t__ type; TYPE_1__ boolean; } ;


 scalar_t__ FILTER_ARG_BOOLEAN ;


 struct filter_type* find_filter_type (struct event_filter*,int) ;

int pevent_filter_event_has_trivial(struct event_filter *filter,
        int event_id,
        enum filter_trivial_type type)
{
 struct filter_type *filter_type;

 if (!filter->filters)
  return 0;

 filter_type = find_filter_type(filter, event_id);

 if (!filter_type)
  return 0;

 if (filter_type->filter->type != FILTER_ARG_BOOLEAN)
  return 0;

 switch (type) {
 case 129:
  return !filter_type->filter->boolean.value;

 case 128:
  return filter_type->filter->boolean.value;
 default:
  return 1;
 }
}
