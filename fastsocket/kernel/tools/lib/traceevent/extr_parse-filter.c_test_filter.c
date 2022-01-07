
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pevent_record {int dummy; } ;
struct TYPE_2__ {int value; } ;
struct filter_arg {int type; TYPE_1__ boolean; } ;
struct event_format {int dummy; } ;
 int die (char*) ;
 int get_arg_value (struct event_format*,struct filter_arg*,struct pevent_record*) ;
 int test_num (struct event_format*,struct filter_arg*,struct pevent_record*) ;
 int test_op (struct event_format*,struct filter_arg*,struct pevent_record*) ;
 int test_str (struct event_format*,struct filter_arg*,struct pevent_record*) ;

__attribute__((used)) static int test_filter(struct event_format *event,
         struct filter_arg *arg, struct pevent_record *record)
{
 switch (arg->type) {
 case 134:

  return arg->boolean.value;

 case 130:
  return test_op(event, arg, record);

 case 131:
  return test_num(event, arg, record);

 case 129:
  return test_str(event, arg, record);

 case 133:
 case 128:
 case 132:




  return !!get_arg_value(event, arg, record);

 default:
  die("oops!");

  return 0;
 }
}
