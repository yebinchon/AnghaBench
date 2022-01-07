
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
struct arg_lookup {int dummy; } ;
 int TREE_CODE (int ) ;
 int TREE_TYPE (int ) ;

 int TYPE_ARG_TYPES (int ) ;
 int TYPE_PTRMEMFUNC_FN_TYPE (int ) ;
 int TYPE_PTRMEMFUNC_P (int ) ;
 int TYPE_PTRMEM_CLASS_TYPE (int ) ;
 scalar_t__ TYPE_PTRMEM_P (int ) ;
 int TYPE_PTRMEM_POINTED_TO_TYPE (int ) ;



 int arg_assoc_args (struct arg_lookup*,int ) ;
 int arg_assoc_class (struct arg_lookup*,int ) ;
 int arg_assoc_namespace (struct arg_lookup*,int ) ;
 int decl_namespace_context (int ) ;
 int gcc_assert (int) ;
 int gcc_unreachable () ;
 int unknown_type_node ;

__attribute__((used)) static bool
arg_assoc_type (struct arg_lookup *k, tree type)
{


  if (!type)
    return 0;

  if (TYPE_PTRMEM_P (type))
    {

      if (arg_assoc_type (k, TYPE_PTRMEM_CLASS_TYPE (type)))
 return 1;
      return arg_assoc_type (k, TYPE_PTRMEM_POINTED_TO_TYPE (type));
    }
  else switch (TREE_CODE (type))
    {
    case 141:
      return 0;
    case 128:
    case 139:
    case 135:
    case 143:
    case 129:
    case 145:
      return 0;
    case 134:
      if (TYPE_PTRMEMFUNC_P (type))
 return arg_assoc_type (k, TYPE_PTRMEMFUNC_FN_TYPE (type));
      return arg_assoc_class (k, type);
    case 136:

    case 146:
    case 133:
    case 147:
      return arg_assoc_type (k, TREE_TYPE (type));
    case 130:
    case 142:
      return arg_assoc_namespace (k, decl_namespace_context (type));
    case 137:


    case 140:

      if (arg_assoc_args (k, TYPE_ARG_TYPES (type)))
 return 1;

      return arg_assoc_type (k, TREE_TYPE (type));
    case 132:
    case 144:
      return 0;
    case 131:
      return 0;
    case 138:
      gcc_assert (type == unknown_type_node);
      return 0;
    default:
      gcc_unreachable ();
    }
  return 0;
}
