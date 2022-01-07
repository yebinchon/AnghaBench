
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pevent_record {int dummy; } ;
struct TYPE_2__ {int type; int right; int left; } ;
struct filter_arg {TYPE_1__ exp; } ;
struct event_format {int dummy; } ;
 int die (char*) ;
 unsigned long long get_arg_value (struct event_format*,int ,struct pevent_record*) ;

__attribute__((used)) static unsigned long long
get_exp_value(struct event_format *event, struct filter_arg *arg, struct pevent_record *record)
{
 unsigned long long lval, rval;

 lval = get_arg_value(event, arg->exp.left, record);
 rval = get_arg_value(event, arg->exp.right, record);

 switch (arg->exp.type) {
 case 138:
  return lval + rval;

 case 129:
  return lval - rval;

 case 133:
  return lval * rval;

 case 136:
  return lval / rval;

 case 134:
  return lval % rval;

 case 130:
  return lval >> rval;

 case 135:
  return lval << rval;

 case 137:
  return lval & rval;

 case 131:
  return lval | rval;

 case 128:
  return lval ^ rval;

 case 132:
 default:
  die("error in exp");
 }
 return 0;
}
