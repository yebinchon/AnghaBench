
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int FILE ;


 int IDENTIFIER_BINDING (int ) ;
 int IDENTIFIER_LABEL_VALUE (int ) ;
 int IDENTIFIER_NAMESPACE_BINDINGS (int ) ;
 int IDENTIFIER_TEMPLATE (int ) ;
 int cxx_print_binding (int *,int ,char*) ;
 int fprintf (int *,char*) ;
 int indent_to (int *,int) ;
 int print_node (int *,char*,int ,int) ;

void
cxx_print_identifier (FILE *file, tree node, int indent)
{
  if (indent == 0)
    fprintf (file, " ");
  else
    indent_to (file, indent);
  cxx_print_binding (file, IDENTIFIER_NAMESPACE_BINDINGS (node), "bindings");
  if (indent == 0)
    fprintf (file, " ");
  else
    indent_to (file, indent);
  cxx_print_binding (file, IDENTIFIER_BINDING (node), "local bindings");
  print_node (file, "label", IDENTIFIER_LABEL_VALUE (node), indent + 4);
  print_node (file, "template", IDENTIFIER_TEMPLATE (node), indent + 4);
}
