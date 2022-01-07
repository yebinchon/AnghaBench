
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int NULL_TREE ;
 int POP_TIMEVAR_AND_RETURN (int ,int ) ;
 int TV_NAME_LOOKUP ;
 int finish_decl (int ,int ,int ) ;
 int pop_from_top_level () ;
 int push_to_top_level () ;
 int pushdecl_namespace_level (int ,int) ;
 int timevar_push (int ) ;

__attribute__((used)) static tree
pushdecl_top_level_1 (tree x, tree *init, bool is_friend)
{
  timevar_push (TV_NAME_LOOKUP);
  push_to_top_level ();
  x = pushdecl_namespace_level (x, is_friend);
  if (init)
    finish_decl (x, *init, NULL_TREE);
  pop_from_top_level ();
  POP_TIMEVAR_AND_RETURN (TV_NAME_LOOKUP, x);
}
