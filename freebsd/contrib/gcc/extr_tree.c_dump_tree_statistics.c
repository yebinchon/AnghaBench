
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* print_statistics ) () ;} ;


 scalar_t__ all_kinds ;
 int fprintf (int ,char*,...) ;
 TYPE_1__ lang_hooks ;
 int phinodes_print_statistics () ;
 int print_debug_expr_statistics () ;
 int print_restrict_base_statistics () ;
 int print_type_hash_statistics () ;
 int print_value_expr_statistics () ;
 int ssanames_print_statistics () ;
 int stderr ;
 int stub1 () ;
 int* tree_node_counts ;
 char** tree_node_kind_names ;
 int* tree_node_sizes ;

void
dump_tree_statistics (void)
{





  fprintf (stderr, "\n??? tree nodes created\n\n");
  fprintf (stderr, "(No per-node statistics)\n");

  print_type_hash_statistics ();
  print_debug_expr_statistics ();
  print_value_expr_statistics ();
  print_restrict_base_statistics ();
  lang_hooks.print_statistics ();
}
