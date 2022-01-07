
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;
struct axs_value {struct type* type; } ;
struct agent_expr {int dummy; } ;


 scalar_t__ TYPE_CODE (struct type*) ;
 scalar_t__ TYPE_CODE_INT ;
 int aop_swap ;
 int ax_simple (struct agent_expr*,int ) ;
 struct type* builtin_type_int ;
 int gen_conversion (struct agent_expr*,struct type*,struct type*) ;
 scalar_t__ is_nontrivial_conversion (struct type*,struct type*) ;
 struct type* max_type (struct type*,struct type*) ;

__attribute__((used)) static void
gen_usual_arithmetic (struct agent_expr *ax, struct axs_value *value1,
        struct axs_value *value2)
{

  if (TYPE_CODE (value1->type) == TYPE_CODE_INT
      && TYPE_CODE (value2->type) == TYPE_CODE_INT)
    {





      struct type *target = max_type (builtin_type_int,
          max_type (value1->type, value2->type));


      gen_conversion (ax, value2->type, target);




      if (is_nontrivial_conversion (value1->type, target))
 {
   ax_simple (ax, aop_swap);
   gen_conversion (ax, value1->type, target);
   ax_simple (ax, aop_swap);
 }

      value1->type = value2->type = target;
    }
}
