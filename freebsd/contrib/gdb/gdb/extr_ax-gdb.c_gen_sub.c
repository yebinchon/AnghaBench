
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct axs_value {int kind; int type; } ;
struct agent_expr {int dummy; } ;


 scalar_t__ TYPE_CODE (int ) ;
 scalar_t__ TYPE_CODE_INT ;
 scalar_t__ TYPE_CODE_PTR ;
 scalar_t__ TYPE_LENGTH (int ) ;
 int TYPE_TARGET_TYPE (int ) ;
 int aop_div_unsigned ;
 int aop_mul ;
 int aop_sub ;
 int ax_simple (struct agent_expr*,int ) ;
 int axs_rvalue ;
 int builtin_type_long ;
 int error (char*) ;
 int gen_extend (struct agent_expr*,int ) ;
 int gen_scale (struct agent_expr*,int ,int ) ;

__attribute__((used)) static void
gen_sub (struct agent_expr *ax, struct axs_value *value,
  struct axs_value *value1, struct axs_value *value2)
{
  if (TYPE_CODE (value1->type) == TYPE_CODE_PTR)
    {

      if (TYPE_CODE (value2->type) == TYPE_CODE_INT)
 {
   gen_scale (ax, aop_mul, value1->type);
   ax_simple (ax, aop_sub);
   gen_extend (ax, value1->type);
   value->type = value1->type;
 }




      else if (TYPE_CODE (value2->type) == TYPE_CODE_PTR
        && (TYPE_LENGTH (TYPE_TARGET_TYPE (value1->type))
     == TYPE_LENGTH (TYPE_TARGET_TYPE (value2->type))))
 {
   ax_simple (ax, aop_sub);
   gen_scale (ax, aop_div_unsigned, value1->type);
   value->type = builtin_type_long;
 }
      else
 error ("First argument of `-' is a pointer, but second argument is neither\nan integer nor a pointer of the same type.");


    }


  else if (TYPE_CODE (value1->type) == TYPE_CODE_INT
    && TYPE_CODE (value2->type) == TYPE_CODE_INT)
    {
      ax_simple (ax, aop_sub);
      gen_extend (ax, value1->type);
      value->type = value1->type;
    }

  else
    error ("Illegal combination of types in subtraction.");

  value->kind = axs_rvalue;
}
