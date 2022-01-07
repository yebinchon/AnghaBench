
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* varinfo_t ;
struct constraint_expr {void* type; scalar_t__ offset; int var; } ;
struct TYPE_3__ {int id; } ;


 void* SCALAR ;
 int escaped_vars_id ;
 int new_constraint (struct constraint_expr,struct constraint_expr) ;
 int process_constraint (int ) ;

__attribute__((used)) static void
make_constraint_from_escaped (varinfo_t vi)
{
  struct constraint_expr lhs, rhs;

  lhs.var = vi->id;
  lhs.offset = 0;
  lhs.type = SCALAR;

  rhs.var = escaped_vars_id;
  rhs.offset = 0;
  rhs.type = SCALAR;
  process_constraint (new_constraint (lhs, rhs));
}
