
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct scc_info {unsigned int* node_mapping; int visited; } ;
typedef TYPE_1__* constraint_graph_t ;
struct TYPE_9__ {char* name; } ;
struct TYPE_8__ {int nonpointer_vars; } ;
struct TYPE_7__ {unsigned int size; int* label; int direct_nodes; } ;


 unsigned int FIRST_REF_NODE ;
 unsigned int LAST_REF_NODE ;
 int TDF_DETAILS ;
 int TEST_BIT (int ,unsigned int) ;
 int bitmap_obstack_initialize (int *) ;
 int clear_edges_for_node (TYPE_1__*,unsigned int) ;
 scalar_t__ dump_file ;
 int dump_flags ;
 scalar_t__ equivalence_class ;
 int fprintf (scalar_t__,char*,char*,...) ;
 TYPE_5__* get_varinfo (unsigned int) ;
 struct scc_info* init_scc_info (unsigned int) ;
 int iteration_obstack ;
 int label_visit (TYPE_1__*,struct scc_info*,unsigned int) ;
 TYPE_2__ stats ;

__attribute__((used)) static struct scc_info *
perform_var_substitution (constraint_graph_t graph)
{
  unsigned int i;
  unsigned int size = graph->size;
  struct scc_info *si = init_scc_info (size);

  bitmap_obstack_initialize (&iteration_obstack);
  equivalence_class = 0;




  for (i = 0; i < LAST_REF_NODE; i++)
    if (!TEST_BIT (si->visited, si->node_mapping[i]))
      label_visit (graph, si, si->node_mapping[i]);

  if (dump_file && (dump_flags & TDF_DETAILS))
    for (i = 0; i < FIRST_REF_NODE; i++)
      {
 bool direct_node = TEST_BIT (graph->direct_nodes, i);
 fprintf (dump_file,
   "Equivalence class for %s node id %d:%s is %d\n",
   direct_node ? "Direct node" : "Indirect node", i,
   get_varinfo (i)->name,
   graph->label[si->node_mapping[i]]);
      }



  for (i = 0; i < FIRST_REF_NODE; i++)
    {
      unsigned int node = si->node_mapping[i];

      if (graph->label[node] == 0 && TEST_BIT (graph->direct_nodes, node))
 {
   if (dump_file && (dump_flags & TDF_DETAILS))
     fprintf (dump_file,
       "%s is a non-pointer variable, eliminating edges.\n",
       get_varinfo (node)->name);
   stats.nonpointer_vars++;
   clear_edges_for_node (graph, node);
 }
    }
  return si;
}
