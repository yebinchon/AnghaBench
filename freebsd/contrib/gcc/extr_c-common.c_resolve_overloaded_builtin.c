
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tree ;
typedef enum built_in_function { ____Placeholder_built_in_function } built_in_function ;
struct TYPE_2__ {int (* resolve_overloaded_builtin ) (int ,int ) ;} ;
 int DECL_BUILT_IN_CLASS (int ) ;
 int DECL_FUNCTION_CODE (int ) ;
 int NULL_TREE ;
 int build_function_call (int ,int ) ;
 int * built_in_decls ;
 int error_mark_node ;
 int exact_log2 (int) ;
 int stub1 (int ,int ) ;
 int sync_resolve_params (int ,int ,int ) ;
 int sync_resolve_return (int ,int ) ;
 int sync_resolve_size (int ,int ) ;
 TYPE_1__ targetm ;

tree
resolve_overloaded_builtin (tree function, tree params)
{
  enum built_in_function orig_code = DECL_FUNCTION_CODE (function);
  switch (DECL_BUILT_IN_CLASS (function))
    {
    case 132:
      break;
    case 134:
      if (targetm.resolve_overloaded_builtin)
 return targetm.resolve_overloaded_builtin (function, params);
      else
 return NULL_TREE;
    default:
      return NULL_TREE;
    }


  switch (orig_code)
    {
    case 142:
    case 138:
    case 139:
    case 141:
    case 137:
    case 140:
    case 145:
    case 130:
    case 131:
    case 144:
    case 128:
    case 133:
    case 143:
    case 129:
    case 135:
    case 136:
      {
 int n = sync_resolve_size (function, params);
 tree new_function, result;

 if (n == 0)
   return error_mark_node;

 new_function = built_in_decls[orig_code + exact_log2 (n) + 1];
 if (!sync_resolve_params (function, new_function, params))
   return error_mark_node;

 result = build_function_call (new_function, params);
 if (orig_code != 143
     && orig_code != 136)
   result = sync_resolve_return (params, result);

 return result;
      }

    default:
      return NULL_TREE;
    }
}
