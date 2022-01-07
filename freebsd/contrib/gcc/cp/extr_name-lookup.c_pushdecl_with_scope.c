
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
struct cp_binding_level {scalar_t__ kind; } ;
typedef struct cp_binding_level cxx_scope ;


 int NULL_TREE ;
 int POP_TIMEVAR_AND_RETURN (int ,int ) ;
 int TV_NAME_LOOKUP ;
 struct cp_binding_level* class_binding_level ;
 struct cp_binding_level* current_binding_level ;
 int current_function_decl ;
 int pushdecl_class_level (int ) ;
 int pushdecl_maybe_friend (int ,int) ;
 scalar_t__ sk_class ;
 int timevar_push (int ) ;

tree
pushdecl_with_scope (tree x, cxx_scope *level, bool is_friend)
{
  struct cp_binding_level *b;
  tree function_decl = current_function_decl;

  timevar_push (TV_NAME_LOOKUP);
  current_function_decl = NULL_TREE;
  if (level->kind == sk_class)
    {
      b = class_binding_level;
      class_binding_level = level;
      pushdecl_class_level (x);
      class_binding_level = b;
    }
  else
    {
      b = current_binding_level;
      current_binding_level = level;
      x = pushdecl_maybe_friend (x, is_friend);
      current_binding_level = b;
    }
  current_function_decl = function_decl;
  POP_TIMEVAR_AND_RETURN (TV_NAME_LOOKUP, x);
}
