
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct filter_type {struct filter_arg* filter; } ;
struct TYPE_2__ {int value; } ;
struct filter_arg {TYPE_1__ boolean; int type; } ;
struct event_format {int id; } ;
struct event_filter {int dummy; } ;


 int FILTER_ARG_BOOLEAN ;
 int FILTER_TRUE ;
 struct filter_type* add_filter_type (struct event_filter*,int ) ;
 struct filter_arg* allocate_arg () ;
 int free_arg (struct filter_arg*) ;
 int process_event (struct event_format*,char const*,struct filter_arg**,char**) ;

__attribute__((used)) static int filter_event(struct event_filter *filter,
   struct event_format *event,
   const char *filter_str, char **error_str)
{
 struct filter_type *filter_type;
 struct filter_arg *arg;
 int ret;

 if (filter_str) {
  ret = process_event(event, filter_str, &arg, error_str);
  if (ret < 0)
   return ret;

 } else {

  arg = allocate_arg();
  arg->type = FILTER_ARG_BOOLEAN;
  arg->boolean.value = FILTER_TRUE;
 }

 filter_type = add_filter_type(filter, event->id);
 if (filter_type->filter)
  free_arg(filter_type->filter);
 filter_type->filter = arg;

 return 0;
}
