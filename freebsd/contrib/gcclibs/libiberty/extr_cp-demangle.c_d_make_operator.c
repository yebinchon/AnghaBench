
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct demangle_operator_info {int dummy; } ;
struct TYPE_3__ {struct demangle_operator_info const* op; } ;
struct TYPE_4__ {TYPE_1__ s_operator; } ;
struct demangle_component {TYPE_2__ u; int type; } ;
struct d_info {int dummy; } ;


 int DEMANGLE_COMPONENT_OPERATOR ;
 struct demangle_component* d_make_empty (struct d_info*) ;

__attribute__((used)) static struct demangle_component *
d_make_operator (struct d_info *di, const struct demangle_operator_info *op)
{
  struct demangle_component *p;

  p = d_make_empty (di);
  if (p != ((void*)0))
    {
      p->type = DEMANGLE_COMPONENT_OPERATOR;
      p->u.s_operator.op = op;
    }
  return p;
}
