
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_7__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef TYPE_1__* constraint_graph_t ;
struct TYPE_10__ {char* name; int oldsolution; int solution; } ;
struct TYPE_9__ {scalar_t__ iterations; int unified_vars_static; int unified_vars_dynamic; } ;
struct TYPE_8__ {scalar_t__* succs; } ;


 int BITMAP_ALLOC (int *) ;
 int BITMAP_FREE (int ) ;
 int RESET_BIT (int ,unsigned int) ;
 int SET_BIT (int ,unsigned int) ;
 int TDF_DETAILS ;
 scalar_t__ TEST_BIT (int ,unsigned int) ;
 int bitmap_clear_bit (scalar_t__,unsigned int) ;
 scalar_t__ bitmap_ior_into (int ,int ) ;
 int changed ;
 scalar_t__ changed_count ;
 scalar_t__ dump_file ;
 int dump_flags ;
 unsigned int find (unsigned int) ;
 int fprintf (scalar_t__,char*,char*,char*) ;
 int gcc_assert (int) ;
 TYPE_7__* get_varinfo (unsigned int) ;
 int merge_graph_nodes (TYPE_1__*,unsigned int,unsigned int) ;
 int merge_node_constraints (TYPE_1__*,unsigned int,unsigned int) ;
 int oldpta_obstack ;
 TYPE_4__ stats ;
 scalar_t__ valid_graph_edge (TYPE_1__*,unsigned int,unsigned int) ;

__attribute__((used)) static void
unify_nodes (constraint_graph_t graph, unsigned int to, unsigned int from,
      bool update_changed)
{

  gcc_assert (to != from && find (to) == to);
  if (dump_file && (dump_flags & TDF_DETAILS))
    fprintf (dump_file, "Unifying %s to %s\n",
      get_varinfo (from)->name,
      get_varinfo (to)->name);

  if (update_changed)
    stats.unified_vars_dynamic++;
  else
    stats.unified_vars_static++;

  merge_graph_nodes (graph, to, from);
  merge_node_constraints (graph, to, from);

  if (update_changed && TEST_BIT (changed, from))
    {
      RESET_BIT (changed, from);
      if (!TEST_BIT (changed, to))
 SET_BIT (changed, to);
      else
 {
   gcc_assert (changed_count > 0);
   changed_count--;
 }
    }



  if (bitmap_ior_into (get_varinfo (to)->solution,
         get_varinfo (from)->solution))
    {
      if (update_changed && !TEST_BIT (changed, to))
 {
   SET_BIT (changed, to);
   changed_count++;
 }
    }

  BITMAP_FREE (get_varinfo (from)->solution);
  BITMAP_FREE (get_varinfo (from)->oldsolution);

  if (stats.iterations > 0)
    {
      BITMAP_FREE (get_varinfo (to)->oldsolution);
      get_varinfo (to)->oldsolution = BITMAP_ALLOC (&oldpta_obstack);
    }

  if (valid_graph_edge (graph, to, to))
    {
      if (graph->succs[to])
 bitmap_clear_bit (graph->succs[to], to);
    }
}
