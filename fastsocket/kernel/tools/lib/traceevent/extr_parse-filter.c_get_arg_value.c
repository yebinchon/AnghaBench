
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pevent_record {int dummy; } ;
struct TYPE_4__ {unsigned long long val; int type; } ;
struct TYPE_3__ {int field; } ;
struct filter_arg {int type; TYPE_2__ value; TYPE_1__ field; } ;
struct event_format {int dummy; } ;





 int FILTER_NUMBER ;
 int die (char*) ;
 unsigned long long get_exp_value (struct event_format*,struct filter_arg*,struct pevent_record*) ;
 unsigned long long get_value (struct event_format*,int ,struct pevent_record*) ;

__attribute__((used)) static unsigned long long
get_arg_value(struct event_format *event, struct filter_arg *arg, struct pevent_record *record)
{
 switch (arg->type) {
 case 129:
  return get_value(event, arg->field.field, record);

 case 128:
  if (arg->value.type != FILTER_NUMBER)
   die("must have number field!");
  return arg->value.val;

 case 130:
  return get_exp_value(event, arg, record);

 default:
  die("oops in filter");
 }
 return 0;
}
