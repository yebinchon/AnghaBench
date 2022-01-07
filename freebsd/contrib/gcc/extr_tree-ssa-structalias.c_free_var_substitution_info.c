
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scc_info {int dummy; } ;
struct TYPE_2__ {int direct_nodes; int eq_rep; int label; } ;


 int bitmap_obstack_release (int *) ;
 int free (int ) ;
 int free_scc_info (struct scc_info*) ;
 TYPE_1__* graph ;
 int iteration_obstack ;
 int sbitmap_free (int ) ;

__attribute__((used)) static void
free_var_substitution_info (struct scc_info *si)
{
  free_scc_info (si);
  free (graph->label);
  free (graph->eq_rep);
  sbitmap_free (graph->direct_nodes);
  bitmap_obstack_release (&iteration_obstack);
}
