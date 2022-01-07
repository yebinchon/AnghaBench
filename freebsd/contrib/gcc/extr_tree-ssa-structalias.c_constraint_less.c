
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* constraint_t ;
struct TYPE_4__ {int rhs; int lhs; } ;


 int constraint_expr_less (int ,int ) ;

__attribute__((used)) static bool
constraint_less (const constraint_t a, const constraint_t b)
{
  if (constraint_expr_less (a->lhs, b->lhs))
    return 1;
  else if (constraint_expr_less (b->lhs, a->lhs))
    return 0;
  else
    return constraint_expr_less (a->rhs, b->rhs);
}
