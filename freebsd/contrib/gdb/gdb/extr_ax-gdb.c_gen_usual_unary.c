
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;
struct axs_value {struct type* type; void* kind; } ;
struct agent_expr {int dummy; } ;


 int TYPE_CODE (struct type*) ;





 struct type* TYPE_TARGET_TYPE (struct type*) ;
 void* axs_rvalue ;
 struct type* builtin_type_int ;
 void* lookup_pointer_type (struct type*) ;
 int require_rvalue (struct agent_expr*,struct axs_value*) ;

__attribute__((used)) static void
gen_usual_unary (struct agent_expr *ax, struct axs_value *value)
{





  switch (TYPE_CODE (value->type))
    {

    case 130:
      value->type = lookup_pointer_type (value->type);
      value->kind = axs_rvalue;
      break;



    case 132:
      {
 struct type *elements = TYPE_TARGET_TYPE (value->type);
 value->type = lookup_pointer_type (elements);
 value->kind = axs_rvalue;


      }
      break;



    case 129:
    case 128:
      return;


    case 131:
      value->type = builtin_type_int;
      break;
    }


  require_rvalue (ax, value);
}
