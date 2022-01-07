
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const unification_kind_t ;
typedef scalar_t__ tree ;





 scalar_t__ NULL_TREE ;
 scalar_t__ PARM_DECL ;
 scalar_t__ TREE_CHAIN (scalar_t__) ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ TREE_LIST ;
 scalar_t__ TREE_PURPOSE (scalar_t__) ;
 scalar_t__ TREE_TYPE (scalar_t__) ;
 scalar_t__ TREE_VALUE (scalar_t__) ;
 scalar_t__ TREE_VEC ;
 scalar_t__ TREE_VEC_ELT (scalar_t__,int) ;
 int TREE_VEC_LENGTH (scalar_t__) ;
 scalar_t__ TYPE_P (scalar_t__) ;
 int UNIFY_ALLOW_DERIVED ;
 int UNIFY_ALLOW_LESS_CV_QUAL ;
 int UNIFY_ALLOW_MORE_CV_QUAL ;
 int UNIFY_ALLOW_NONE ;
 int UNIFY_ALLOW_OUTER_LEVEL ;
 scalar_t__ can_convert_arg (scalar_t__,scalar_t__,scalar_t__,int) ;
 scalar_t__ error_mark_node ;
 int gcc_assert (int) ;
 int gcc_unreachable () ;
 int maybe_adjust_types_for_deduction (int const,scalar_t__*,scalar_t__*) ;
 scalar_t__ resolve_overloaded_unification (scalar_t__,scalar_t__,scalar_t__,scalar_t__,int const,int) ;
 scalar_t__ same_type_p (scalar_t__,scalar_t__) ;
 scalar_t__ type_unknown_p (scalar_t__) ;
 scalar_t__ unify (scalar_t__,scalar_t__,scalar_t__,scalar_t__,int) ;
 scalar_t__ unknown_type_node ;
 scalar_t__ unlowered_expr_type (scalar_t__) ;
 scalar_t__ uses_template_parms (scalar_t__) ;
 scalar_t__ void_list_node ;

__attribute__((used)) static int
type_unification_real (tree tparms,
         tree targs,
         tree xparms,
         tree xargs,
         int subr,
         unification_kind_t strict,
         int flags)
{
  tree parm, arg;
  int i;
  int ntparms = TREE_VEC_LENGTH (tparms);
  int sub_strict;
  int saw_undeduced = 0;
  tree parms, args;

  gcc_assert (TREE_CODE (tparms) == TREE_VEC);
  gcc_assert (xparms == NULL_TREE || TREE_CODE (xparms) == TREE_LIST);
  gcc_assert (!xargs || TREE_CODE (xargs) == TREE_LIST);
  gcc_assert (ntparms > 0);

  switch (strict)
    {
    case 130:
      sub_strict = (UNIFY_ALLOW_OUTER_LEVEL | UNIFY_ALLOW_MORE_CV_QUAL
      | UNIFY_ALLOW_DERIVED);
      break;

    case 129:
      sub_strict = UNIFY_ALLOW_LESS_CV_QUAL;
      break;

    case 128:
      sub_strict = UNIFY_ALLOW_NONE;
      break;

    default:
      gcc_unreachable ();
    }

 again:
  parms = xparms;
  args = xargs;

  while (parms && parms != void_list_node
  && args && args != void_list_node)
    {
      parm = TREE_VALUE (parms);
      parms = TREE_CHAIN (parms);
      arg = TREE_VALUE (args);
      args = TREE_CHAIN (args);

      if (arg == error_mark_node)
 return 1;
      if (arg == unknown_type_node)


 continue;





      if (!uses_template_parms (parm))
 {
   tree type;

   if (!TYPE_P (arg))
     type = TREE_TYPE (arg);
   else
     type = arg;

   if (same_type_p (parm, type))
     continue;
   if (strict != 128
       && can_convert_arg (parm, type, TYPE_P (arg) ? NULL_TREE : arg,
      flags))
     continue;

   return 1;
 }

      if (!TYPE_P (arg))
 {
   gcc_assert (TREE_TYPE (arg) != NULL_TREE);
   if (type_unknown_p (arg))
     {







       if (resolve_overloaded_unification
    (tparms, targs, parm, arg, strict, sub_strict))
  continue;

       return 1;
     }
   arg = unlowered_expr_type (arg);
   if (arg == error_mark_node)
     return 1;
 }

      {
 int arg_strict = sub_strict;

 if (!subr)
   arg_strict |= maybe_adjust_types_for_deduction (strict, &parm, &arg);

 if (unify (tparms, targs, parm, arg, arg_strict))
   return 1;
      }
    }



  if (args && args != void_list_node && parms == void_list_node)
    return 1;

  if (parms && parms != void_list_node
      && TREE_PURPOSE (parms) == NULL_TREE)
    return 1;

  if (!subr)
    for (i = 0; i < ntparms; i++)
      if (!TREE_VEC_ELT (targs, i))
 {
   tree tparm;

          if (TREE_VEC_ELT (tparms, i) == error_mark_node)
            continue;

          tparm = TREE_VALUE (TREE_VEC_ELT (tparms, i));





   if (TREE_CODE (tparm) == PARM_DECL
       && uses_template_parms (TREE_TYPE (tparm))
       && !saw_undeduced++)
     goto again;

   return 2;
 }

  return 0;
}
