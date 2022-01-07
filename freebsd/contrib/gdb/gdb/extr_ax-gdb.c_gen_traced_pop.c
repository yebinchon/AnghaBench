
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int reg; } ;
struct axs_value {int kind; TYPE_1__ u; int type; } ;
struct agent_expr {int dummy; } ;


 int TYPE_LENGTH (int ) ;
 int aop_pop ;
 int aop_trace ;
 int ax_const_l (struct agent_expr*,int) ;
 int ax_reg (struct agent_expr*,int ) ;
 int ax_simple (struct agent_expr*,int ) ;



 scalar_t__ trace_kludge ;

__attribute__((used)) static void
gen_traced_pop (struct agent_expr *ax, struct axs_value *value)
{
  if (trace_kludge)
    switch (value->kind)
      {
      case 128:


 ax_simple (ax, aop_pop);
 break;

      case 130:
 {
   int length = TYPE_LENGTH (value->type);






   ax_const_l (ax, length);
   ax_simple (ax, aop_trace);
 }
 break;

      case 129:



 ax_reg (ax, value->u.reg);
 ax_simple (ax, aop_pop);
 break;
      }
  else

    ax_simple (ax, aop_pop);
}
