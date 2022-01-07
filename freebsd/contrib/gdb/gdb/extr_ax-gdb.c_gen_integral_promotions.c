
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct axs_value {void* type; } ;
struct agent_expr {int dummy; } ;


 void* builtin_type_int ;
 void* builtin_type_unsigned_int ;
 int gen_conversion (struct agent_expr*,void*,void*) ;
 int type_wider_than (void*,void*) ;

__attribute__((used)) static void
gen_integral_promotions (struct agent_expr *ax, struct axs_value *value)
{
  if (!type_wider_than (value->type, builtin_type_int))
    {
      gen_conversion (ax, value->type, builtin_type_int);
      value->type = builtin_type_int;
    }
  else if (!type_wider_than (value->type, builtin_type_unsigned_int))
    {
      gen_conversion (ax, value->type, builtin_type_unsigned_int);
      value->type = builtin_type_unsigned_int;
    }
}
