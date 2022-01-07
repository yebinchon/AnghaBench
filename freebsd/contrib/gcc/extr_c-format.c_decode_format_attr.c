
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int tree ;
struct TYPE_6__ {int format_num; int first_arg_num; int format_type; } ;
typedef TYPE_2__ function_format_info ;
struct TYPE_5__ {int (* getdecls ) () ;} ;
struct TYPE_7__ {TYPE_1__ decls; } ;


 scalar_t__ IDENTIFIER_NODE ;
 char* IDENTIFIER_POINTER (int ) ;
 int OPT_Wformat ;
 int TREE_CHAIN (int ) ;
 scalar_t__ TREE_CODE (int ) ;
 int TREE_VALUE (int ) ;
 int decode_format_type (char const*) ;
 int error (char*,...) ;
 int format_type_error ;
 int gcc_assert (int) ;
 int get_constant (int ,int *,int) ;
 TYPE_3__ lang_hooks ;
 int stub1 () ;
 int stub2 () ;
 int warning (int ,char*,int ) ;

__attribute__((used)) static bool
decode_format_attr (tree args, function_format_info *info, int validated_p)
{
  tree format_type_id = TREE_VALUE (args);
  tree format_num_expr = TREE_VALUE (TREE_CHAIN (args));
  tree first_arg_num_expr
    = TREE_VALUE (TREE_CHAIN (TREE_CHAIN (args)));

  if (TREE_CODE (format_type_id) != IDENTIFIER_NODE)
    {
      gcc_assert (!validated_p);
      error ("%Junrecognized format specifier", lang_hooks.decls.getdecls ());
      return 0;
    }
  else
    {
      const char *p = IDENTIFIER_POINTER (format_type_id);

      info->format_type = decode_format_type (p);

      if (info->format_type == format_type_error)
 {
   gcc_assert (!validated_p);
   warning (OPT_Wformat, "%qE is an unrecognized format function type",
     format_type_id);
   return 0;
 }
    }

  if (!get_constant (format_num_expr, &info->format_num, validated_p))
    {
      error ("format string has invalid operand number");
      return 0;
    }

  if (!get_constant (first_arg_num_expr, &info->first_arg_num, validated_p))
    {
      error ("%<...%> has invalid operand number");
      return 0;
    }

  if (info->first_arg_num != 0 && info->first_arg_num <= info->format_num)
    {
      gcc_assert (!validated_p);
      error ("format string argument follows the args to be formatted");
      return 0;
    }

  return 1;
}
