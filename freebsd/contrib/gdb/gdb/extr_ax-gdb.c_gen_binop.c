
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct axs_value {int kind; int type; } ;
struct agent_expr {int dummy; } ;
typedef enum agent_op { ____Placeholder_agent_op } agent_op ;


 scalar_t__ TYPE_CODE (int ) ;
 scalar_t__ TYPE_CODE_INT ;
 scalar_t__ TYPE_UNSIGNED (int ) ;
 int ax_simple (struct agent_expr*,int) ;
 int axs_rvalue ;
 int error (char*,char*) ;
 int gen_extend (struct agent_expr*,int ) ;

__attribute__((used)) static void
gen_binop (struct agent_expr *ax, struct axs_value *value,
    struct axs_value *value1, struct axs_value *value2, enum agent_op op,
    enum agent_op op_unsigned, int may_carry, char *name)
{

  if ((TYPE_CODE (value1->type) != TYPE_CODE_INT)
      || (TYPE_CODE (value2->type) != TYPE_CODE_INT))
    error ("Illegal combination of types in %s.", name);

  ax_simple (ax,
      TYPE_UNSIGNED (value1->type) ? op_unsigned : op);
  if (may_carry)
    gen_extend (ax, value1->type);
  value->type = value1->type;
  value->kind = axs_rvalue;
}
