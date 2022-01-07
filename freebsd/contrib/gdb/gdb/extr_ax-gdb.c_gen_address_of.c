
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct axs_value {int kind; void* type; } ;
struct agent_expr {int dummy; } ;


 scalar_t__ TYPE_CODE (void*) ;
 scalar_t__ TYPE_CODE_FUNC ;



 int error (char*) ;
 void* lookup_pointer_type (void*) ;

__attribute__((used)) static void
gen_address_of (struct agent_expr *ax, struct axs_value *value)
{



  if (TYPE_CODE (value->type) == TYPE_CODE_FUNC)


    value->type = lookup_pointer_type (value->type);
  else
    switch (value->kind)
      {
      case 128:
 error ("Operand of `&' is an rvalue, which has no address.");

      case 129:
 error ("Operand of `&' is in a register, and has no address.");

      case 130:
 value->kind = 128;
 value->type = lookup_pointer_type (value->type);
 break;
      }
}
