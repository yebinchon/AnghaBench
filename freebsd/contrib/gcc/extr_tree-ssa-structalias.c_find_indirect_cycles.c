
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct scc_info {int visited; } ;
typedef TYPE_1__* constraint_graph_t ;
struct TYPE_4__ {unsigned int size; } ;


 int LAST_REF_NODE ;
 unsigned int MIN (int ,unsigned int) ;
 int TEST_BIT (int ,unsigned int) ;
 unsigned int find (unsigned int) ;
 int free_scc_info (struct scc_info*) ;
 struct scc_info* init_scc_info (unsigned int) ;
 int scc_visit (TYPE_1__*,struct scc_info*,unsigned int) ;

__attribute__((used)) static void
find_indirect_cycles (constraint_graph_t graph)
{
  unsigned int i;
  unsigned int size = graph->size;
  struct scc_info *si = init_scc_info (size);

  for (i = 0; i < MIN (LAST_REF_NODE, size); i ++ )
    if (!TEST_BIT (si->visited, i) && find (i) == i)
      scc_visit (graph, si, i);

  free_scc_info (si);
}
