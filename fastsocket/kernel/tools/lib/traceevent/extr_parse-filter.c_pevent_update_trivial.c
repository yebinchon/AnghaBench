
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pevent {int dummy; } ;
struct filter_type {struct event_format* event; struct filter_arg* filter; } ;
struct TYPE_2__ {scalar_t__ value; } ;
struct filter_arg {scalar_t__ type; TYPE_1__ boolean; } ;
struct event_format {int id; int name; int system; } ;
struct event_filter {int filters; struct filter_type* event_filters; struct pevent* pevent; } ;
typedef enum filter_trivial_type { ____Placeholder_filter_trivial_type } filter_trivial_type ;


 scalar_t__ FILTER_ARG_BOOLEAN ;
 int FILTER_TRIVIAL_FALSE ;
 int FILTER_TRIVIAL_TRUE ;
 int filter_event (struct event_filter*,struct event_format*,char*,int *) ;
 int free (char*) ;
 char* pevent_filter_make_string (struct event_filter*,int ) ;
 struct event_format* pevent_find_event_by_name (struct pevent*,int ,int ) ;
 scalar_t__ strcmp (char*,char*) ;

int pevent_update_trivial(struct event_filter *dest, struct event_filter *source,
     enum filter_trivial_type type)
{
 struct pevent *src_pevent;
 struct pevent *dest_pevent;
 struct event_format *event;
 struct filter_type *filter_type;
 struct filter_arg *arg;
 char *str;
 int i;

 src_pevent = source->pevent;
 dest_pevent = dest->pevent;


 if (!dest->filters || !source->filters)
  return 0;

 for (i = 0; i < dest->filters; i++) {
  filter_type = &dest->event_filters[i];
  arg = filter_type->filter;
  if (arg->type != FILTER_ARG_BOOLEAN)
   continue;
  if ((arg->boolean.value && type == FILTER_TRIVIAL_FALSE) ||
      (!arg->boolean.value && type == FILTER_TRIVIAL_TRUE))
   continue;

  event = filter_type->event;

  if (src_pevent != dest_pevent) {

   event = pevent_find_event_by_name(src_pevent,
         event->system,
         event->name);
   if (!event)
    return -1;
  }

  str = pevent_filter_make_string(source, event->id);
  if (!str)
   continue;


  if (strcmp(str, "TRUE") != 0 && strcmp(str, "FALSE") != 0)
   filter_event(dest, event, str, ((void*)0));
  free(str);
 }
 return 0;
}
