
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union exp_element {int dummy; } exp_element ;
struct axs_value {int type; int kind; } ;
struct agent_expr {int len; } ;


 int TYPE_LENGTH (int ) ;
 int ax_const_l (struct agent_expr*,int ) ;
 int axs_rvalue ;
 int builtin_type_int ;
 int gen_expr (union exp_element**,struct agent_expr*,struct axs_value*) ;

__attribute__((used)) static void
gen_sizeof (union exp_element **pc, struct agent_expr *ax,
     struct axs_value *value)
{





  int start = ax->len;
  gen_expr (pc, ax, value);


  ax->len = start;

  ax_const_l (ax, TYPE_LENGTH (value->type));
  value->kind = axs_rvalue;
  value->type = builtin_type_int;
}
