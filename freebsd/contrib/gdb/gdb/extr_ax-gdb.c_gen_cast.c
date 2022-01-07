
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;
struct axs_value {struct type* type; } ;
struct agent_expr {int dummy; } ;


 int TYPE_CODE (struct type*) ;
 struct type* check_typedef (struct type*) ;
 int error (char*) ;
 int gen_conversion (struct agent_expr*,struct type*,struct type*) ;
 int require_rvalue (struct agent_expr*,struct axs_value*) ;

__attribute__((used)) static void
gen_cast (struct agent_expr *ax, struct axs_value *value, struct type *type)
{


  require_rvalue (ax, value);

  type = check_typedef (type);

  switch (TYPE_CODE (type))
    {
    case 131:


      break;

    case 135:
    case 130:
    case 129:
    case 133:
      error ("Illegal type cast: intended type must be scalar.");

    case 134:





      value->type = type;
      break;

    case 132:
      gen_conversion (ax, value->type, type);
      break;

    case 128:




      break;

    default:
      error ("Casts to requested type are not yet implemented.");
    }

  value->type = type;
}
