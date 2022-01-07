
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 scalar_t__ DECL_CLASS_SCOPE_P (int ) ;
 scalar_t__ DECL_CONTEXT (int ) ;
 scalar_t__ DECL_FRIEND_CONTEXT (int ) ;
 scalar_t__ FUNCTION_DECL ;
 int NULL_TREE ;
 scalar_t__ TREE_CODE (int ) ;
 scalar_t__ VAR_DECL ;
 int current_function_decl ;
 int gcc_assert (int) ;
 int push_nested_class (scalar_t__) ;
 int push_to_top_level () ;
 int saved_access_scope ;
 int tree_cons (int ,int ,int ) ;

__attribute__((used)) static void
push_access_scope (tree t)
{
  gcc_assert (TREE_CODE (t) == FUNCTION_DECL
       || TREE_CODE (t) == VAR_DECL);

  if (DECL_FRIEND_CONTEXT (t))
    push_nested_class (DECL_FRIEND_CONTEXT (t));
  else if (DECL_CLASS_SCOPE_P (t))
    push_nested_class (DECL_CONTEXT (t));
  else
    push_to_top_level ();

  if (TREE_CODE (t) == FUNCTION_DECL)
    {
      saved_access_scope = tree_cons
 (NULL_TREE, current_function_decl, saved_access_scope);
      current_function_decl = t;
    }
}
