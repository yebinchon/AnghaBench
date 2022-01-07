
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pevent_record {int dummy; } ;
struct TYPE_2__ {int type; int reg; int val; int * field; } ;
struct filter_arg {TYPE_1__ str; } ;
struct event_format {int dummy; } ;






 int comm ;
 char* get_comm (struct event_format*,struct pevent_record*) ;
 char* get_field_str (struct filter_arg*,struct pevent_record*) ;
 int regexec (int *,char const*,int ,int *,int ) ;
 int strcmp (char const*,int ) ;

__attribute__((used)) static int test_str(struct event_format *event,
      struct filter_arg *arg, struct pevent_record *record)
{
 const char *val;

 if (arg->str.field == &comm)
  val = get_comm(event, record);
 else
  val = get_field_str(arg, record);

 switch (arg->str.type) {
 case 131:
  return strcmp(val, arg->str.val) == 0;

 case 130:
  return strcmp(val, arg->str.val) != 0;

 case 128:

  return !regexec(&arg->str.reg, val, 0, ((void*)0), 0);

 case 129:
  return regexec(&arg->str.reg, val, 0, ((void*)0), 0);

 default:

  return 0;
 }
}
