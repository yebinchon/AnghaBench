
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct axs_value {int type; } ;
struct agent_expr {int dummy; } ;


 scalar_t__ TYPE_CODE (int ) ;
 scalar_t__ TYPE_CODE_INT ;
 scalar_t__ TYPE_CODE_PTR ;
 int aop_log_not ;
 int ax_simple (struct agent_expr*,int ) ;
 int builtin_type_int ;
 int error (char*) ;
 int gen_usual_unary (struct agent_expr*,struct axs_value*) ;

__attribute__((used)) static void
gen_logical_not (struct agent_expr *ax, struct axs_value *value)
{
  if (TYPE_CODE (value->type) != TYPE_CODE_INT
      && TYPE_CODE (value->type) != TYPE_CODE_PTR)
    error ("Illegal type of operand to `!'.");

  gen_usual_unary (ax, value);
  ax_simple (ax, aop_log_not);
  value->type = builtin_type_int;
}
