
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int value; } ;
struct filter_arg {TYPE_1__ boolean; int type; } ;
struct event_format {int dummy; } ;


 int FILTER_ARG_BOOLEAN ;
 int FILTER_FALSE ;
 struct filter_arg* allocate_arg () ;
 int pevent_buffer_init (char const*,int ) ;
 int process_filter (struct event_format*,struct filter_arg**,char**,int ) ;
 int show_error (char**,char*) ;
 int strlen (char const*) ;

__attribute__((used)) static int
process_event(struct event_format *event, const char *filter_str,
       struct filter_arg **parg, char **error_str)
{
 int ret;

 pevent_buffer_init(filter_str, strlen(filter_str));

 ret = process_filter(event, parg, error_str, 0);
 if (ret == 1) {
  show_error(error_str,
      "Unbalanced number of ')'");
  return -1;
 }
 if (ret < 0)
  return ret;


 if (!*parg) {
  *parg = allocate_arg();
  (*parg)->type = FILTER_ARG_BOOLEAN;
  (*parg)->boolean.value = FILTER_FALSE;
 }

 return 0;
}
