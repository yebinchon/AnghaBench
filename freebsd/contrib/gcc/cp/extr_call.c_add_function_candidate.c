
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ tree ;
struct z_candidate {int dummy; } ;
struct TYPE_6__ {int ellipsis_p; int this_p; scalar_t__ bad_p; } ;
typedef TYPE_1__ conversion ;


 int DECL_ANTICIPATED (scalar_t__) ;
 scalar_t__ DECL_CONSTRUCTOR_P (scalar_t__) ;
 scalar_t__ DECL_HIDDEN_FRIEND_P (scalar_t__) ;
 scalar_t__ DECL_NONSTATIC_MEMBER_FUNCTION_P (scalar_t__) ;
 scalar_t__ NULL_TREE ;
 scalar_t__ TREE_CHAIN (scalar_t__) ;
 int TREE_TYPE (scalar_t__) ;
 scalar_t__ TREE_VALUE (scalar_t__) ;
 scalar_t__ TYPE_ARG_TYPES (int ) ;
 int TYPE_QUALS (int ) ;
 struct z_candidate* add_candidate (struct z_candidate**,scalar_t__,scalar_t__,int,TYPE_1__**,scalar_t__,scalar_t__,int) ;
 TYPE_1__** alloc_conversions (int) ;
 TYPE_1__* build_identity_conv (scalar_t__,scalar_t__) ;
 scalar_t__ build_pointer_type (scalar_t__) ;
 scalar_t__ build_qualified_type (scalar_t__,int ) ;
 int gcc_assert (int) ;
 TYPE_1__* implicit_conversion (scalar_t__,scalar_t__,scalar_t__,int,int) ;
 int list_length (scalar_t__) ;
 scalar_t__ lvalue_type (scalar_t__) ;
 scalar_t__ skip_artificial_parms_for (scalar_t__,scalar_t__) ;
 int sufficient_parms_p (scalar_t__) ;
 scalar_t__ void_list_node ;

__attribute__((used)) static struct z_candidate *
add_function_candidate (struct z_candidate **candidates,
   tree fn, tree ctype, tree arglist,
   tree access_path, tree conversion_path,
   int flags)
{
  tree parmlist = TYPE_ARG_TYPES (TREE_TYPE (fn));
  int i, len;
  conversion **convs;
  tree parmnode, argnode;
  tree orig_arglist;
  int viable = 1;




  gcc_assert (!DECL_ANTICIPATED (fn) || DECL_HIDDEN_FRIEND_P (fn));



  if (DECL_CONSTRUCTOR_P (fn))
    {
      parmlist = skip_artificial_parms_for (fn, parmlist);
      orig_arglist = arglist;
      arglist = skip_artificial_parms_for (fn, arglist);
    }
  else
    orig_arglist = arglist;

  len = list_length (arglist);
  convs = alloc_conversions (len);
  parmnode = parmlist;
  for (i = 0; i < len; ++i)
    {
      if (parmnode == NULL_TREE || parmnode == void_list_node)
 break;
      parmnode = TREE_CHAIN (parmnode);
    }

  if (i < len && parmnode)
    viable = 0;


  else if (!sufficient_parms_p (parmnode))
    viable = 0;

  if (! viable)
    goto out;





  parmnode = parmlist;
  argnode = arglist;

  for (i = 0; i < len; ++i)
    {
      tree arg = TREE_VALUE (argnode);
      tree argtype = lvalue_type (arg);
      conversion *t;
      int is_this;

      if (parmnode == void_list_node)
 break;

      is_this = (i == 0 && DECL_NONSTATIC_MEMBER_FUNCTION_P (fn)
   && ! DECL_CONSTRUCTOR_P (fn));

      if (parmnode)
 {
   tree parmtype = TREE_VALUE (parmnode);
   if (ctype && is_this)
     {
       parmtype
  = build_qualified_type (ctype,
     TYPE_QUALS (TREE_TYPE (parmtype)));
       parmtype = build_pointer_type (parmtype);
     }

   t = implicit_conversion (parmtype, argtype, arg,
                    0, flags);
 }
      else
 {
   t = build_identity_conv (argtype, arg);
   t->ellipsis_p = 1;
 }

      if (t && is_this)
 t->this_p = 1;

      convs[i] = t;
      if (! t)
 {
   viable = 0;
   break;
 }

      if (t->bad_p)
 viable = -1;

      if (parmnode)
 parmnode = TREE_CHAIN (parmnode);
      argnode = TREE_CHAIN (argnode);
    }

 out:
  return add_candidate (candidates, fn, orig_arglist, len, convs,
   access_path, conversion_path, viable);
}
