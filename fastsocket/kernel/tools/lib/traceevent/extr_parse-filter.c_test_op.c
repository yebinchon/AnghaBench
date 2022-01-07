
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pevent_record {int dummy; } ;
struct TYPE_2__ {int type; int right; int left; } ;
struct filter_arg {TYPE_1__ op; } ;
struct event_format {int dummy; } ;





 int test_filter (struct event_format*,int ,struct pevent_record*) ;

__attribute__((used)) static int test_op(struct event_format *event,
     struct filter_arg *arg, struct pevent_record *record)
{
 switch (arg->op.type) {
 case 130:
  return test_filter(event, arg->op.left, record) &&
   test_filter(event, arg->op.right, record);

 case 128:
  return test_filter(event, arg->op.left, record) ||
   test_filter(event, arg->op.right, record);

 case 129:
  return !test_filter(event, arg->op.right, record);

 default:

  return 0;
 }
}
