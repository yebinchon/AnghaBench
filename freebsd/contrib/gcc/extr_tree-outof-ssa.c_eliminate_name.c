
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int elim_graph ;


 int elim_graph_add_node (int ,int ) ;

__attribute__((used)) static inline void
eliminate_name (elim_graph g, tree T)
{
  elim_graph_add_node (g, T);
}
