
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct axs_value {int kind; int type; } ;
struct agent_expr {int dummy; } ;


 scalar_t__ TYPE_CODE (int ) ;
 scalar_t__ TYPE_CODE_INT ;
 scalar_t__ TYPE_CODE_PTR ;
 int aop_add ;
 int aop_mul ;
 int aop_swap ;
 int ax_simple (struct agent_expr*,int ) ;
 int axs_rvalue ;
 int error (char*,char*) ;
 int gen_extend (struct agent_expr*,int ) ;
 int gen_scale (struct agent_expr*,int ,int ) ;

__attribute__((used)) static void
gen_add (struct agent_expr *ax, struct axs_value *value,
  struct axs_value *value1, struct axs_value *value2, char *name)
{

  if (TYPE_CODE (value1->type) == TYPE_CODE_INT
      && TYPE_CODE (value2->type) == TYPE_CODE_PTR)
    {

      ax_simple (ax, aop_swap);
      gen_scale (ax, aop_mul, value2->type);
      ax_simple (ax, aop_add);
      gen_extend (ax, value2->type);
      value->type = value2->type;
    }


  else if (TYPE_CODE (value1->type) == TYPE_CODE_PTR
    && TYPE_CODE (value2->type) == TYPE_CODE_INT)
    {
      gen_scale (ax, aop_mul, value1->type);
      ax_simple (ax, aop_add);
      gen_extend (ax, value1->type);
      value->type = value1->type;
    }



  else if (TYPE_CODE (value1->type) == TYPE_CODE_INT
    && TYPE_CODE (value2->type) == TYPE_CODE_INT)
    {
      ax_simple (ax, aop_add);
      gen_extend (ax, value1->type);
      value->type = value1->type;
    }

  else
    error ("Illegal combination of types in %s.", name);

  value->kind = axs_rvalue;
}
