
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ tree ;
struct altivec_builtin_types {unsigned int code; scalar_t__ op1; scalar_t__ op2; scalar_t__ op3; } ;
struct TYPE_2__ {scalar_t__ (* types_compatible_p ) (scalar_t__,int ) ;} ;


 unsigned int ALTIVEC_BUILTIN_OVERLOADED_FIRST ;
 unsigned int ALTIVEC_BUILTIN_OVERLOADED_LAST ;
 unsigned int ALTIVEC_BUILTIN_VEC_STEP ;
 unsigned int DECL_FUNCTION_CODE (scalar_t__) ;
 scalar_t__ NOP_EXPR ;
 scalar_t__ NULL_TREE ;
 scalar_t__ POINTER_TYPE_P (scalar_t__) ;
 scalar_t__ RS6000_BTI_NOT_OPAQUE ;
 scalar_t__ TREE_CHAIN (scalar_t__) ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ TREE_OPERAND (scalar_t__,int ) ;
 scalar_t__ TREE_TYPE (scalar_t__) ;
 scalar_t__ TREE_VALUE (scalar_t__) ;
 scalar_t__ TYPE_ARG_TYPES (scalar_t__) ;
 scalar_t__ TYPE_QUALS (scalar_t__) ;
 scalar_t__ TYPE_READONLY (scalar_t__) ;
 int TYPE_VECTOR_SUBPARTS (scalar_t__) ;
 scalar_t__ VECTOR_TYPE ;
 int VOID_TYPE_P (scalar_t__) ;
 int abort () ;
 scalar_t__ altivec_build_resolved_builtin (scalar_t__*,int,struct altivec_builtin_types const*) ;
 struct altivec_builtin_types* altivec_overloaded_builtins ;
 scalar_t__ build_int_cst (scalar_t__,int ) ;
 scalar_t__ build_pointer_type (int ) ;
 int build_qualified_type (scalar_t__,int ) ;
 int const_ptr_type_node ;
 scalar_t__ default_conversion (scalar_t__) ;
 int error (char*) ;
 scalar_t__ error_mark_node ;
 scalar_t__ fold_convert (scalar_t__,scalar_t__) ;
 TYPE_1__ lang_hooks ;
 int ptr_type_node ;
 scalar_t__ rs6000_builtin_type_compatible (scalar_t__,scalar_t__) ;
 scalar_t__ stub1 (scalar_t__,int ) ;
 scalar_t__ stub2 (scalar_t__,int ) ;
 int warning (int ,char*,int,scalar_t__) ;

tree
altivec_resolve_overloaded_builtin (tree fndecl, tree arglist)
{
  unsigned int fcode = DECL_FUNCTION_CODE (fndecl);
  tree fnargs = TYPE_ARG_TYPES (TREE_TYPE (fndecl));
  tree types[3], args[3];
  const struct altivec_builtin_types *desc;
  int n;

  if (fcode < ALTIVEC_BUILTIN_OVERLOADED_FIRST
      || fcode > ALTIVEC_BUILTIN_OVERLOADED_LAST)
    return NULL_TREE;

  for (n = 0;
       !VOID_TYPE_P (TREE_VALUE (fnargs)) && arglist;
       fnargs = TREE_CHAIN (fnargs), arglist = TREE_CHAIN (arglist), n++)
    {
      tree decl_type = TREE_VALUE (fnargs);
      tree arg = TREE_VALUE (arglist);
      tree type;

      if (arg == error_mark_node)
 return error_mark_node;

      if (n >= 3)
        abort ();

      arg = default_conversion (arg);



      type = TREE_TYPE (arg);
      if (POINTER_TYPE_P (type)
   && TREE_CODE (arg) == NOP_EXPR
   && lang_hooks.types_compatible_p (TREE_TYPE (arg),
         const_ptr_type_node)
   && lang_hooks.types_compatible_p (TREE_TYPE (TREE_OPERAND (arg, 0)),
         ptr_type_node))
 {
   arg = TREE_OPERAND (arg, 0);
          type = TREE_TYPE (arg);
 }



      if (POINTER_TYPE_P (decl_type)
   && POINTER_TYPE_P (type)
   && TYPE_QUALS (TREE_TYPE (type)) != 0)
 {
          if (TYPE_READONLY (TREE_TYPE (type))
       && !TYPE_READONLY (TREE_TYPE (decl_type)))
     warning (0, "passing arg %d of %qE discards qualifiers from"
          "pointer target type", n + 1, fndecl);
   type = build_pointer_type (build_qualified_type (TREE_TYPE (type),
          0));
   arg = fold_convert (type, arg);
 }

      args[n] = arg;
      types[n] = type;
    }



  if (!VOID_TYPE_P (TREE_VALUE (fnargs)) || arglist)
    return ((void*)0);

  if (n == 0)
    abort ();

  if (fcode == ALTIVEC_BUILTIN_VEC_STEP)
    {
      if (TREE_CODE (types[0]) != VECTOR_TYPE)
 goto bad;

      return build_int_cst (NULL_TREE, TYPE_VECTOR_SUBPARTS (types[0]));
    }

  for (desc = altivec_overloaded_builtins;
       desc->code && desc->code != fcode; desc++)
    continue;



  for (; desc->code == fcode; desc++)
    if ((desc->op1 == RS6000_BTI_NOT_OPAQUE
  || rs6000_builtin_type_compatible (types[0], desc->op1))
 && (desc->op2 == RS6000_BTI_NOT_OPAQUE
     || rs6000_builtin_type_compatible (types[1], desc->op2))
 && (desc->op3 == RS6000_BTI_NOT_OPAQUE
     || rs6000_builtin_type_compatible (types[2], desc->op3)))
      return altivec_build_resolved_builtin (args, n, desc);

 bad:
  error ("invalid parameter combination for AltiVec intrinsic");
  return error_mark_node;
}
