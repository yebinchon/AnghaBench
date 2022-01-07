
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 int TDF_UID ;
 int TDF_VOPS ;
 scalar_t__ TREE_CHAIN (scalar_t__) ;
 int fprintf (int ,char*) ;
 int print_generic_expr (int ,scalar_t__,int) ;
 int stderr ;

void
debug_tree_chain (tree t)
{
  while (t)
  {
    print_generic_expr (stderr, t, TDF_VOPS|TDF_UID);
    fprintf(stderr, " ");
    t = TREE_CHAIN (t);
  }
  fprintf (stderr, "\n");
}
