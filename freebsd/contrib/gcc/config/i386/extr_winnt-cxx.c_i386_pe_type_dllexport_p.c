
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 scalar_t__ DECL_ARTIFICIAL (int ) ;
 int DECL_THUNK_P (int ) ;
 scalar_t__ FUNCTION_DECL ;
 scalar_t__ METHOD_TYPE ;
 scalar_t__ TREE_CODE (int ) ;
 int TREE_TYPE (int ) ;
 scalar_t__ VAR_DECL ;
 int gcc_assert (int) ;

bool
i386_pe_type_dllexport_p (tree decl)
{
   gcc_assert (TREE_CODE (decl) == VAR_DECL
               || TREE_CODE (decl) == FUNCTION_DECL);



   if (TREE_CODE (TREE_TYPE (decl)) == METHOD_TYPE
       && DECL_ARTIFICIAL (decl) && !DECL_THUNK_P (decl))
     return 0;
   return 1;
}
