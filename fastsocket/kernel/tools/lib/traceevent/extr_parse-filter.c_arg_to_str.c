
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int value; } ;
struct filter_arg {int type; TYPE_1__ boolean; } ;
struct event_filter {int dummy; } ;
 char* exp_to_str (struct event_filter*,struct filter_arg*) ;
 char* field_to_str (struct event_filter*,struct filter_arg*) ;
 char* malloc_or_die (int) ;
 char* num_to_str (struct event_filter*,struct filter_arg*) ;
 char* op_to_str (struct event_filter*,struct filter_arg*) ;
 char* str_to_str (struct event_filter*,struct filter_arg*) ;
 int strcpy (char*,char*) ;
 char* val_to_str (struct event_filter*,struct filter_arg*) ;

__attribute__((used)) static char *arg_to_str(struct event_filter *filter, struct filter_arg *arg)
{
 char *str;

 switch (arg->type) {
 case 134:
  str = malloc_or_die(6);
  if (arg->boolean.value)
   strcpy(str, "TRUE");
  else
   strcpy(str, "FALSE");
  return str;

 case 130:
  return op_to_str(filter, arg);

 case 131:
  return num_to_str(filter, arg);

 case 129:
  return str_to_str(filter, arg);

 case 128:
  return val_to_str(filter, arg);

 case 132:
  return field_to_str(filter, arg);

 case 133:
  return exp_to_str(filter, arg);

 default:

  return ((void*)0);
 }

}
