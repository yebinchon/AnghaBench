
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 scalar_t__ DECL_CLASS_SCOPE_P (int ) ;
 scalar_t__ DECL_FRIEND_CONTEXT (int ) ;
 scalar_t__ FUNCTION_DECL ;
 int TREE_CHAIN (int ) ;
 scalar_t__ TREE_CODE (int ) ;
 int TREE_VALUE (int ) ;
 int current_function_decl ;
 int pop_from_top_level () ;
 int pop_nested_class () ;
 int saved_access_scope ;

__attribute__((used)) static void
pop_access_scope (tree t)
{
  if (TREE_CODE (t) == FUNCTION_DECL)
    {
      current_function_decl = TREE_VALUE (saved_access_scope);
      saved_access_scope = TREE_CHAIN (saved_access_scope);
    }

  if (DECL_FRIEND_CONTEXT (t) || DECL_CLASS_SCOPE_P (t))
    pop_nested_class ();
  else
    pop_from_top_level ();
}
