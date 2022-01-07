
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int CLASSTYPE_VTABLES (int ) ;
 int DECL_ASSEMBLER_NAME (int ) ;
 int DECL_CONTEXT (int ) ;
 scalar_t__ DECL_ONE_ONLY (int ) ;
 int * DECL_SECTION_NAME (int ) ;
 scalar_t__ DECL_THUNK_P (int ) ;
 scalar_t__ DECL_VTABLE_OR_VTT_P (int ) ;
 char const* IDENTIFIER_POINTER (int ) ;
 scalar_t__ TARGET_USE_LOCAL_THUNK_ALIAS_P (int ) ;
 int THUNK_TARGET (int ) ;
 scalar_t__ TREE_CODE (int ) ;
 scalar_t__ VAR_DECL ;

const char *
cxx_comdat_group (tree decl)
{
  tree name;




  if (TREE_CODE (decl) == VAR_DECL && DECL_VTABLE_OR_VTT_P (decl))
    name = DECL_ASSEMBLER_NAME (CLASSTYPE_VTABLES (DECL_CONTEXT (decl)));


  else
    {
      while (DECL_THUNK_P (decl))
 {



   tree target = THUNK_TARGET (decl);
   if (TARGET_USE_LOCAL_THUNK_ALIAS_P (target)
       && DECL_SECTION_NAME (target) != ((void*)0)
       && DECL_ONE_ONLY (target))
     decl = target;
   else
     break;
 }
      name = DECL_ASSEMBLER_NAME (decl);
    }

  return IDENTIFIER_POINTER (name);
}
