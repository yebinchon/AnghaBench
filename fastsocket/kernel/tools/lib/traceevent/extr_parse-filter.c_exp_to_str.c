
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int type; int right; int left; } ;
struct filter_arg {TYPE_1__ exp; } ;
struct event_filter {int dummy; } ;
 char* arg_to_str (struct event_filter*,int ) ;
 int die (char*) ;
 int free (char*) ;
 char* malloc_or_die (int) ;
 int snprintf (char*,int,char*,char*,char*,char*) ;
 int strlen (char*) ;

__attribute__((used)) static char *exp_to_str(struct event_filter *filter, struct filter_arg *arg)
{
 char *lstr;
 char *rstr;
 char *op;
 char *str = ((void*)0);
 int len;

 lstr = arg_to_str(filter, arg->exp.left);
 rstr = arg_to_str(filter, arg->exp.right);
 if (!lstr || !rstr)
  goto out;

 switch (arg->exp.type) {
 case 137:
  op = "+";
  break;
 case 129:
  op = "-";
  break;
 case 132:
  op = "*";
  break;
 case 135:
  op = "/";
  break;
 case 133:
  op = "%";
  break;
 case 130:
  op = ">>";
  break;
 case 134:
  op = "<<";
  break;
 case 136:
  op = "&";
  break;
 case 131:
  op = "|";
  break;
 case 128:
  op = "^";
  break;
 default:
  die("oops in exp");
 }

 len = strlen(op) + strlen(lstr) + strlen(rstr) + 4;
 str = malloc_or_die(len);
 snprintf(str, len, "%s %s %s", lstr, op, rstr);
out:
 free(lstr);
 free(rstr);

 return str;
}
