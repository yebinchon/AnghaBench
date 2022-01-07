
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
struct z_candidate {int dummy; } ;
typedef enum tree_code { ____Placeholder_tree_code } tree_code ;






 scalar_t__ CP_TYPE_CONST_P (scalar_t__) ;
 scalar_t__ ENUMERAL_TYPE ;



 scalar_t__ INTEGRAL_TYPE_P (scalar_t__) ;
 scalar_t__ IS_AGGR_TYPE (scalar_t__) ;




 int NOP_EXPR ;
 scalar_t__ NULL_TREE ;
 scalar_t__ OVL_CURRENT (scalar_t__) ;




 scalar_t__ REFERENCE_TYPE ;
 scalar_t__ TREE_CHAIN (scalar_t__) ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ TREE_TYPE (scalar_t__) ;
 scalar_t__ TREE_VALUE (scalar_t__) ;



 scalar_t__ TYPE_MAIN_VARIANT (scalar_t__) ;
 int add_builtin_candidate (struct z_candidate**,int,int,scalar_t__,scalar_t__,scalar_t__,scalar_t__*,scalar_t__*,int) ;
 scalar_t__ boolean_type_node ;
 int build_builtin_candidate (struct z_candidate**,scalar_t__,scalar_t__,scalar_t__,scalar_t__*,scalar_t__*,int) ;
 scalar_t__ build_reference_type (scalar_t__) ;
 scalar_t__ lookup_conversions (scalar_t__) ;
 scalar_t__ lvalue_type (scalar_t__) ;
 scalar_t__ non_reference (scalar_t__) ;
 scalar_t__ real_lvalue_p (scalar_t__) ;
 scalar_t__ tree_cons (scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ type_decays_to (scalar_t__) ;
 scalar_t__ type_promotes_to (scalar_t__) ;
 int value_member (scalar_t__,scalar_t__) ;

__attribute__((used)) static void
add_builtin_candidates (struct z_candidate **candidates, enum tree_code code,
   enum tree_code code2, tree fnname, tree *args,
   int flags)
{
  int ref1, i;
  int enum_p = 0;
  tree type, argtypes[3];




  tree types[2];

  for (i = 0; i < 3; ++i)
    {
      if (args[i])
 argtypes[i] = lvalue_type (args[i]);
      else
 argtypes[i] = NULL_TREE;
    }

  switch (code)
    {





    case 133:
    case 131:
    case 134:
    case 132:
    case 136:
      ref1 = 1;
      break;






    case 129:
      build_builtin_candidate
 (candidates, fnname, boolean_type_node,
  NULL_TREE, args, argtypes, flags);
      return;

    case 128:
    case 130:
      build_builtin_candidate
 (candidates, fnname, boolean_type_node,
  boolean_type_node, args, argtypes, flags);
      return;

    case 145:
    case 143:
    case 144:
      return;

    case 142:
    case 141:
    case 135:
    case 137:
    case 138:
    case 139:
    case 140:
      enum_p = 1;


    default:
      ref1 = 0;
    }

  types[0] = types[1] = NULL_TREE;

  for (i = 0; i < 2; ++i)
    {
      if (! args[i])
 ;
      else if (IS_AGGR_TYPE (argtypes[i]))
 {
   tree convs;

   if (i == 0 && code == 136 && code2 == NOP_EXPR)
     return;

   convs = lookup_conversions (argtypes[i]);

   if (code == 142)
     {
       if (real_lvalue_p (args[i]))
  types[i] = tree_cons
    (NULL_TREE, build_reference_type (argtypes[i]), types[i]);

       types[i] = tree_cons
  (NULL_TREE, TYPE_MAIN_VARIANT (argtypes[i]), types[i]);
     }

   else if (! convs)
     return;

   for (; convs; convs = TREE_CHAIN (convs))
     {
       type = TREE_TYPE (TREE_TYPE (OVL_CURRENT (TREE_VALUE (convs))));

       if (i == 0 && ref1
    && (TREE_CODE (type) != REFERENCE_TYPE
        || CP_TYPE_CONST_P (TREE_TYPE (type))))
  continue;

       if (code == 142 && TREE_CODE (type) == REFERENCE_TYPE)
  types[i] = tree_cons (NULL_TREE, type, types[i]);

       type = non_reference (type);
       if (i != 0 || ! ref1)
  {
    type = TYPE_MAIN_VARIANT (type_decays_to (type));
    if (enum_p && TREE_CODE (type) == ENUMERAL_TYPE)
      types[i] = tree_cons (NULL_TREE, type, types[i]);
    if (INTEGRAL_TYPE_P (type))
      type = type_promotes_to (type);
  }

       if (! value_member (type, types[i]))
  types[i] = tree_cons (NULL_TREE, type, types[i]);
     }
 }
      else
 {
   if (code == 142 && real_lvalue_p (args[i]))
     types[i] = tree_cons
       (NULL_TREE, build_reference_type (argtypes[i]), types[i]);
   type = non_reference (argtypes[i]);
   if (i != 0 || ! ref1)
     {
       type = TYPE_MAIN_VARIANT (type_decays_to (type));
       if (enum_p && TREE_CODE (type) == ENUMERAL_TYPE)
  types[i] = tree_cons (NULL_TREE, type, types[i]);
       if (INTEGRAL_TYPE_P (type))
  type = type_promotes_to (type);
     }
   types[i] = tree_cons (NULL_TREE, type, types[i]);
 }
    }



  for (; types[0]; types[0] = TREE_CHAIN (types[0]))
    {
      if (types[1])
 for (type = types[1]; type; type = TREE_CHAIN (type))
   add_builtin_candidate
     (candidates, code, code2, fnname, TREE_VALUE (types[0]),
      TREE_VALUE (type), args, argtypes, flags);
      else
 add_builtin_candidate
   (candidates, code, code2, fnname, TREE_VALUE (types[0]),
    NULL_TREE, args, argtypes, flags);
    }
}
