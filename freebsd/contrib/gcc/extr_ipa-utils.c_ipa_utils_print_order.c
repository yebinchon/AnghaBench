
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cgraph_node {int dummy; } ;
typedef int FILE ;


 int dump_cgraph_node (int ,struct cgraph_node*) ;
 int dump_file ;
 int fflush (int *) ;
 int fprintf (int *,char*,...) ;

void
ipa_utils_print_order (FILE* out,
         const char * note,
         struct cgraph_node** order,
         int count)
{
  int i;
  fprintf (out, "\n\n ordered call graph: %s\n", note);

  for (i = count - 1; i >= 0; i--)
    dump_cgraph_node(dump_file, order[i]);
  fprintf (out, "\n");
  fflush(out);
}
