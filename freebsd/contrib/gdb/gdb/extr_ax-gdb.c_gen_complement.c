
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct axs_value {int type; } ;
struct agent_expr {int dummy; } ;


 scalar_t__ TYPE_CODE (int ) ;
 scalar_t__ TYPE_CODE_INT ;
 int aop_bit_not ;
 int ax_simple (struct agent_expr*,int ) ;
 int error (char*) ;
 int gen_extend (struct agent_expr*,int ) ;
 int gen_integral_promotions (struct agent_expr*,struct axs_value*) ;
 int gen_usual_unary (struct agent_expr*,struct axs_value*) ;

__attribute__((used)) static void
gen_complement (struct agent_expr *ax, struct axs_value *value)
{
  if (TYPE_CODE (value->type) != TYPE_CODE_INT)
    error ("Illegal type of operand to `~'.");

  gen_usual_unary (ax, value);
  gen_integral_promotions (ax, value);
  ax_simple (ax, aop_bit_not);
  gen_extend (ax, value->type);
}
