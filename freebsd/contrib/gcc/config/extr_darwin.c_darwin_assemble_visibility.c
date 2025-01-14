
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int DECL_ASSEMBLER_NAME (int ) ;
 int IDENTIFIER_POINTER (int ) ;
 int OPT_Wattributes ;
 int VISIBILITY_DEFAULT ;
 int VISIBILITY_HIDDEN ;
 int asm_out_file ;
 int assemble_name (int ,int ) ;
 int fputs (char*,int ) ;
 int warning (int ,char*) ;

void
darwin_assemble_visibility (tree decl, int vis)
{
  if (vis == VISIBILITY_DEFAULT)
    ;
  else if (vis == VISIBILITY_HIDDEN)
    {
      fputs ("\t.private_extern ", asm_out_file);
      assemble_name (asm_out_file,
       (IDENTIFIER_POINTER (DECL_ASSEMBLER_NAME (decl))));
      fputs ("\n", asm_out_file);
    }
  else
    warning (OPT_Wattributes, "internal and protected visibility attributes "
      "not supported in this configuration; ignored");
}
