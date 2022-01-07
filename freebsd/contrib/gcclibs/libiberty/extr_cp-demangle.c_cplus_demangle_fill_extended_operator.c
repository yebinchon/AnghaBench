
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int args; struct demangle_component* name; } ;
struct TYPE_4__ {TYPE_1__ s_extended_operator; } ;
struct demangle_component {TYPE_2__ u; int type; } ;


 int DEMANGLE_COMPONENT_EXTENDED_OPERATOR ;

int
cplus_demangle_fill_extended_operator (struct demangle_component *p, int args,
                                       struct demangle_component *name)
{
  if (p == ((void*)0) || args < 0 || name == ((void*)0))
    return 0;
  p->type = DEMANGLE_COMPONENT_EXTENDED_OPERATOR;
  p->u.s_extended_operator.args = args;
  p->u.s_extended_operator.name = name;
  return 1;
}
