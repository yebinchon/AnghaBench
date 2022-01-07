
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int DECL_ASSEMBLER_NAME (int ) ;
 char* IDENTIFIER_POINTER (int ) ;
 int OPT_Wattributes ;
 int asm_out_file ;
 int assemble_name (int ,char const*) ;
 int fprintf (int ,char*,...) ;
 int warning (int ,char*) ;

void
default_assemble_visibility (tree decl, int vis)
{
  static const char * const visibility_types[] = {
    ((void*)0), "protected", "hidden", "internal"
  };

  const char *name, *type;

  name = IDENTIFIER_POINTER (DECL_ASSEMBLER_NAME (decl));
  type = visibility_types[vis];






  warning (OPT_Wattributes, "visibility attribute not supported "
    "in this configuration; ignored");

}
