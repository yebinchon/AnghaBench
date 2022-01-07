
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct constraint_expr {int type; scalar_t__ offset; int var; } ;


 int SCALAR ;
 int escaped_vars_id ;
 int new_constraint (struct constraint_expr,struct constraint_expr) ;
 int process_constraint (int ) ;

__attribute__((used)) static void
make_constraint_to_escaped (struct constraint_expr rhs)
{
  struct constraint_expr lhs;

  lhs.var = escaped_vars_id;
  lhs.offset = 0;
  lhs.type = SCALAR;

  process_constraint (new_constraint (lhs, rhs));
}
