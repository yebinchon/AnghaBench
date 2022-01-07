
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
typedef int FILE ;


 scalar_t__ C_IS_RESERVED_WORD (scalar_t__) ;
 size_t C_RID_CODE (scalar_t__) ;
 char* IDENTIFIER_POINTER (scalar_t__) ;
 int I_LABEL_DECL (scalar_t__) ;
 int I_SYMBOL_DECL (scalar_t__) ;
 int I_TAG_DECL (scalar_t__) ;
 int fprintf (int *,char*,void*,char*) ;
 int indent_to (int *,int) ;
 int print_node (int *,char*,int ,int) ;
 scalar_t__* ridpointers ;

void
c_print_identifier (FILE *file, tree node, int indent)
{
  print_node (file, "symbol", I_SYMBOL_DECL (node), indent + 4);
  print_node (file, "tag", I_TAG_DECL (node), indent + 4);
  print_node (file, "label", I_LABEL_DECL (node), indent + 4);
  if (C_IS_RESERVED_WORD (node))
    {
      tree rid = ridpointers[C_RID_CODE (node)];
      indent_to (file, indent + 4);
      fprintf (file, "rid %p \"%s\"",
        (void *) rid, IDENTIFIER_POINTER (rid));
    }
}
