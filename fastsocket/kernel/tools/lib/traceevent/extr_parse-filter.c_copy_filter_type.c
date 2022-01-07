
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct filter_type {struct filter_arg* filter; TYPE_1__* event; } ;
struct TYPE_4__ {int value; } ;
struct filter_arg {TYPE_2__ boolean; int type; } ;
struct event_format {int id; } ;
struct event_filter {int pevent; } ;
struct TYPE_3__ {char* system; char* name; } ;


 int FILTER_ARG_BOOLEAN ;
 struct filter_type* add_filter_type (struct event_filter*,int ) ;
 struct filter_arg* allocate_arg () ;
 char* arg_to_str (struct event_filter*,struct filter_arg*) ;
 int filter_event (struct event_filter*,struct event_format*,char*,int *) ;
 int free (char*) ;
 struct event_format* pevent_find_event_by_name (int ,char const*,char const*) ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static int copy_filter_type(struct event_filter *filter,
        struct event_filter *source,
        struct filter_type *filter_type)
{
 struct filter_arg *arg;
 struct event_format *event;
 const char *sys;
 const char *name;
 char *str;


 sys = filter_type->event->system;
 name = filter_type->event->name;
 event = pevent_find_event_by_name(filter->pevent, sys, name);
 if (!event)
  return -1;

 str = arg_to_str(source, filter_type->filter);
 if (!str)
  return -1;

 if (strcmp(str, "TRUE") == 0 || strcmp(str, "FALSE") == 0) {

  arg = allocate_arg();
  arg->type = FILTER_ARG_BOOLEAN;
  if (strcmp(str, "TRUE") == 0)
   arg->boolean.value = 1;
  else
   arg->boolean.value = 0;

  filter_type = add_filter_type(filter, event->id);
  filter_type->filter = arg;

  free(str);
  return 0;
 }

 filter_event(filter, event, str, ((void*)0));
 free(str);

 return 0;
}
