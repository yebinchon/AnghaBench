
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
typedef int rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 size_t BUILT_IN_STRLEN ;
 int EXPAND_NORMAL ;
 int NULL_TREE ;
 int PLUS_EXPR ;
 int POINTER_TYPE ;
 scalar_t__ TREE_CHAIN (scalar_t__) ;
 int TREE_TYPE (scalar_t__) ;
 scalar_t__ TREE_VALUE (scalar_t__) ;
 int VOID_TYPE ;
 scalar_t__ build_function_call_expr (scalar_t__,scalar_t__) ;
 scalar_t__ build_tree_list (int ,scalar_t__) ;
 scalar_t__ builtin_save_expr (scalar_t__) ;
 char* c_getstr (scalar_t__) ;
 int emit_insn (int ) ;
 int end_sequence () ;
 int expand_builtin_strcpy (scalar_t__,scalar_t__,int ,int) ;
 int expand_expr (scalar_t__,int ,int,int ) ;
 scalar_t__ fold_build2 (int ,int ,scalar_t__,scalar_t__) ;
 scalar_t__ fold_convert (int ,scalar_t__) ;
 int get_insns () ;
 scalar_t__* implicit_built_in_decls ;
 int optimize_size ;
 int start_sequence () ;
 scalar_t__ tree_cons (int ,scalar_t__,scalar_t__) ;
 int validate_arglist (scalar_t__,int ,int ,int ) ;

__attribute__((used)) static rtx
expand_builtin_strcat (tree fndecl, tree arglist, rtx target, enum machine_mode mode)
{
  if (!validate_arglist (arglist, POINTER_TYPE, POINTER_TYPE, VOID_TYPE))
    return 0;
  else
    {
      tree dst = TREE_VALUE (arglist),
      src = TREE_VALUE (TREE_CHAIN (arglist));
      const char *p = c_getstr (src);


      if (p && *p == '\0')
 return expand_expr (dst, target, mode, EXPAND_NORMAL);

      if (!optimize_size)
 {

   tree newsrc, newdst,
     strlen_fn = implicit_built_in_decls[BUILT_IN_STRLEN];
   rtx insns;


   newsrc = builtin_save_expr (src);
   if (newsrc != src)
     arglist = build_tree_list (NULL_TREE, newsrc);
   else
     arglist = TREE_CHAIN (arglist);

   dst = builtin_save_expr (dst);

   start_sequence ();


   newdst =
     build_function_call_expr (strlen_fn,
          build_tree_list (NULL_TREE, dst));

   newdst = fold_convert (TREE_TYPE (dst), newdst);
   newdst = fold_build2 (PLUS_EXPR, TREE_TYPE (dst), dst, newdst);

   newdst = builtin_save_expr (newdst);
   arglist = tree_cons (NULL_TREE, newdst, arglist);

   if (!expand_builtin_strcpy (fndecl, arglist, target, mode))
     {
       end_sequence ();
       return 0;
     }


   insns = get_insns ();
   end_sequence ();
   emit_insn (insns);

   return expand_expr (dst, target, mode, EXPAND_NORMAL);
 }

      return 0;
    }
}
