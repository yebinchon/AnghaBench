
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;
struct axs_value {struct type* type; int kind; } ;
struct agent_expr {int dummy; } ;
typedef int LONGEST ;


 int ax_const_l (struct agent_expr*,int ) ;
 int axs_rvalue ;

__attribute__((used)) static void
gen_int_literal (struct agent_expr *ax, struct axs_value *value, LONGEST k,
   struct type *type)
{
  ax_const_l (ax, k);
  value->kind = axs_rvalue;
  value->type = type;
}
