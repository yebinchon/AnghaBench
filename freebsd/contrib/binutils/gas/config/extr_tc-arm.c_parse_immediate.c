
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ X_op; int X_add_number; } ;
typedef TYPE_1__ expressionS ;
typedef scalar_t__ bfd_boolean ;
struct TYPE_5__ {void* error; } ;


 int FAIL ;
 int GE_IMM_PREFIX ;
 int GE_OPT_PREFIX ;
 scalar_t__ O_constant ;
 int SUCCESS ;
 void* _ (char*) ;
 TYPE_3__ inst ;
 int my_get_expression (TYPE_1__*,char**,int ) ;

__attribute__((used)) static int
parse_immediate (char **str, int *val, int min, int max,
   bfd_boolean prefix_opt)
{
  expressionS exp;
  my_get_expression (&exp, str, prefix_opt ? GE_OPT_PREFIX : GE_IMM_PREFIX);
  if (exp.X_op != O_constant)
    {
      inst.error = _("constant expression required");
      return FAIL;
    }

  if (exp.X_add_number < min || exp.X_add_number > max)
    {
      inst.error = _("immediate value out of range");
      return FAIL;
    }

  *val = exp.X_add_number;
  return SUCCESS;
}
