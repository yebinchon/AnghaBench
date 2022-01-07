
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int reg; } ;
struct axs_value {int kind; int type; TYPE_1__ u; } ;
struct agent_expr {int dummy; } ;


 int ax_reg (struct agent_expr*,int ) ;



 int gen_extend (struct agent_expr*,int ) ;
 int gen_fetch (struct agent_expr*,int ) ;

__attribute__((used)) static void
require_rvalue (struct agent_expr *ax, struct axs_value *value)
{
  switch (value->kind)
    {
    case 128:

      break;

    case 130:

      gen_fetch (ax, value->type);
      break;

    case 129:





      ax_reg (ax, value->u.reg);
      gen_extend (ax, value->type);
      break;
    }

  value->kind = 128;
}
