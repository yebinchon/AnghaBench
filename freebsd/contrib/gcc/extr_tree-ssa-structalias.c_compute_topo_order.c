
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct topo_info {int visited; } ;
typedef int constraint_graph_t ;


 int TEST_BIT (int ,unsigned int) ;
 unsigned int VEC_length (int ,int ) ;
 unsigned int find (unsigned int) ;
 int topo_visit (int ,struct topo_info*,unsigned int) ;
 int varinfo_t ;
 int varmap ;

__attribute__((used)) static void
compute_topo_order (constraint_graph_t graph,
      struct topo_info *ti)
{
  unsigned int i;
  unsigned int size = VEC_length (varinfo_t, varmap);

  for (i = 0; i != size; ++i)
    if (!TEST_BIT (ti->visited, i) && find (i) == i)
      topo_visit (graph, ti, i);
}
