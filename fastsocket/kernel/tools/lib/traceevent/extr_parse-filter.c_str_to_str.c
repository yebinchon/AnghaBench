
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int type; char* val; TYPE_1__* field; } ;
struct filter_arg {TYPE_2__ str; } ;
struct event_filter {int dummy; } ;
struct TYPE_3__ {char* name; } ;






 char* malloc_or_die (int) ;
 int snprintf (char*,int,char*,char*,char*,char*) ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static char *str_to_str(struct event_filter *filter, struct filter_arg *arg)
{
 char *str = ((void*)0);
 char *op = ((void*)0);
 int len;

 switch (arg->str.type) {
 case 131:
  op = "==";

 case 130:
  if (!op)
   op = "!=";

 case 128:
  if (!op)
   op = "=~";

 case 129:
  if (!op)
   op = "!~";

  len = strlen(arg->str.field->name) + strlen(op) +
   strlen(arg->str.val) + 6;
  str = malloc_or_die(len);
  snprintf(str, len, "%s %s \"%s\"",
    arg->str.field->name,
    op, arg->str.val);
  break;

 default:

  break;
 }
 return str;
}
