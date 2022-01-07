
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef char* tree ;
typedef enum tree_code { ____Placeholder_tree_code } tree_code ;
struct TYPE_4__ {char* name; } ;
struct TYPE_3__ {char* name; } ;





 int MODIFY_EXPR ;



 TYPE_2__* assignment_operator_name_info ;
 int error (char*,char const*,char const*,char const*,...) ;
 TYPE_1__* operator_name_info ;

__attribute__((used)) static void
op_error (enum tree_code code, enum tree_code code2,
   tree arg1, tree arg2, tree arg3, const char *problem)
{
  const char *opname;

  if (code == MODIFY_EXPR)
    opname = assignment_operator_name_info[code2].name;
  else
    opname = operator_name_info[code].name;

  switch (code)
    {
    case 132:
      error ("%s for ternary %<operator?:%> in %<%E ? %E : %E%>",
      problem, arg1, arg2, arg3);
      break;

    case 129:
    case 130:
      error ("%s for %<operator%s%> in %<%E%s%>", problem, opname, arg1, opname);
      break;

    case 133:
      error ("%s for %<operator[]%> in %<%E[%E]%>", problem, arg1, arg2);
      break;

    case 128:
    case 131:
      error ("%s for %qs in %<%s %E%>", problem, opname, opname, arg1);
      break;

    default:
      if (arg2)
 error ("%s for %<operator%s%> in %<%E %s %E%>",
        problem, opname, arg1, opname, arg2);
      else
 error ("%s for %<operator%s%> in %<%s%E%>",
        problem, opname, opname, arg1);
      break;
    }
}
