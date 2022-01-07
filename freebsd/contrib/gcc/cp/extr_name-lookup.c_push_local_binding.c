
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
struct cp_binding_level {int dummy; } ;


 int IDENTIFIER_BINDING (int ) ;
 int NULL_TREE ;
 scalar_t__ OVERLOAD ;
 int PUSH_USING ;
 scalar_t__ TREE_CODE (int ) ;
 int add_decl_to_level (int ,struct cp_binding_level*) ;
 int build_tree_list (int ,int ) ;
 struct cp_binding_level* innermost_nonclass_level () ;
 scalar_t__ lookup_name_innermost_nonclass_level (int ) ;
 int push_binding (int ,int ,struct cp_binding_level*) ;
 int supplement_binding (int ,int ) ;

void
push_local_binding (tree id, tree decl, int flags)
{
  struct cp_binding_level *b;



  b = innermost_nonclass_level ();

  if (lookup_name_innermost_nonclass_level (id))
    {

      if (!supplement_binding (IDENTIFIER_BINDING (id), decl))



 return;
    }
  else

    push_binding (id, decl, b);

  if (TREE_CODE (decl) == OVERLOAD || (flags & PUSH_USING))



    decl = build_tree_list (NULL_TREE, decl);



  add_decl_to_level (decl, b);
}
