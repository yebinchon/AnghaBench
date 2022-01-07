
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* field; } ;
struct filter_arg {TYPE_2__ field; } ;
struct event_filter {int dummy; } ;
struct TYPE_3__ {int name; } ;


 char* strdup (int ) ;

__attribute__((used)) static char *field_to_str(struct event_filter *filter, struct filter_arg *arg)
{
 return strdup(arg->field.field->name);
}
