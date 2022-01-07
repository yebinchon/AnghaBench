
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int ASM_WEAKEN_DECL (int ,int ,char const* const,int *) ;
 int ASM_WEAKEN_LABEL (int ,char const* const) ;
 int DECL_ASSEMBLER_NAME (int ) ;
 char* IDENTIFIER_POINTER (int ) ;
 int TREE_USED (int ) ;
 int asm_out_file ;
 int warning (int ,char*) ;

__attribute__((used)) static void
weak_finish_1 (tree decl)
{




  if (! TREE_USED (decl))
    return;
}
