
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 scalar_t__ CONST_DECL ;
 scalar_t__ DECL_ARTIFICIAL (int ) ;
 int DECL_ASSEMBLER_NAME (int ) ;
 scalar_t__ DECL_STATIC_FUNCTION_P (int ) ;
 scalar_t__ DECL_THIS_STATIC (int ) ;
 scalar_t__ FUNCTION_DECL ;
 scalar_t__ NAMESPACE_DECL ;
 scalar_t__ TEMPLATE_DECL ;
 scalar_t__ TREE_CODE (int ) ;
 scalar_t__ TYPE_DECL ;
 int pedwarn (char*,int ) ;

void
warn_extern_redeclared_static (tree newdecl, tree olddecl)
{
  tree name;

  if (TREE_CODE (newdecl) == TYPE_DECL
      || TREE_CODE (newdecl) == TEMPLATE_DECL
      || TREE_CODE (newdecl) == CONST_DECL
      || TREE_CODE (newdecl) == NAMESPACE_DECL)
    return;



  if (TREE_CODE (newdecl) == FUNCTION_DECL
      && DECL_STATIC_FUNCTION_P (newdecl))
    return;



  if (DECL_THIS_STATIC (olddecl) || !DECL_THIS_STATIC (newdecl))
    return;


  if (TREE_CODE (olddecl) == FUNCTION_DECL
      && DECL_ARTIFICIAL (olddecl))
    return;

  name = DECL_ASSEMBLER_NAME (newdecl);
  pedwarn ("%qD was declared %<extern%> and later %<static%>", newdecl);
  pedwarn ("previous declaration of %q+D", olddecl);
}
