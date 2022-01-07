
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pevent_record {int dummy; } ;
struct TYPE_2__ {int type; int right; int left; } ;
struct filter_arg {TYPE_1__ num; } ;
struct event_format {int dummy; } ;
 unsigned long long get_arg_value (struct event_format*,int ,struct pevent_record*) ;

__attribute__((used)) static int test_num(struct event_format *event,
      struct filter_arg *arg, struct pevent_record *record)
{
 unsigned long long lval, rval;

 lval = get_arg_value(event, arg->num.left, record);
 rval = get_arg_value(event, arg->num.right, record);

 switch (arg->num.type) {
 case 133:
  return lval == rval;

 case 128:
  return lval != rval;

 case 131:
  return lval > rval;

 case 129:
  return lval < rval;

 case 132:
  return lval >= rval;

 case 130:
  return lval <= rval;

 default:

  return 0;
 }
}
