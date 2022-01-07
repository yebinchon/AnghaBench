
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;



 scalar_t__ DECL_NAME (int ) ;
 scalar_t__ DECL_P (int ) ;
 char const* IDENTIFIER_POINTER (scalar_t__) ;
 int STRIP_NOPS (int ) ;
 int TREE_CODE (int ) ;
 int TREE_OPERAND (int ,int ) ;

const char *
get_name (tree t)
{
  tree stripped_decl;

  stripped_decl = t;
  STRIP_NOPS (stripped_decl);
  if (DECL_P (stripped_decl) && DECL_NAME (stripped_decl))
    return IDENTIFIER_POINTER (DECL_NAME (stripped_decl));
  else
    {
      switch (TREE_CODE (stripped_decl))
 {
 case 128:
   return get_name (TREE_OPERAND (stripped_decl, 0));
   break;
 default:
   return ((void*)0);
 }
    }
}
