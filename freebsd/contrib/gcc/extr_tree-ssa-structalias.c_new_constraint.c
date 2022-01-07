
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct constraint_expr {int dummy; } ;
typedef TYPE_1__* constraint_t ;
struct TYPE_4__ {struct constraint_expr rhs; struct constraint_expr lhs; } ;


 int constraint_pool ;
 TYPE_1__* pool_alloc (int ) ;

__attribute__((used)) static constraint_t
new_constraint (const struct constraint_expr lhs,
  const struct constraint_expr rhs)
{
  constraint_t ret = pool_alloc (constraint_pool);
  ret->lhs = lhs;
  ret->rhs = rhs;
  return ret;
}
