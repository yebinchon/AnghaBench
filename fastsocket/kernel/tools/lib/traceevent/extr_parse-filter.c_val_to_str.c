
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int val; } ;
struct filter_arg {TYPE_1__ value; } ;
struct event_filter {int dummy; } ;


 char* malloc_or_die (int) ;
 int snprintf (char*,int,char*,int ) ;

__attribute__((used)) static char *val_to_str(struct event_filter *filter, struct filter_arg *arg)
{
 char *str;

 str = malloc_or_die(30);

 snprintf(str, 30, "%lld", arg->value.val);

 return str;
}
