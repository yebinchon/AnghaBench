
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* elim_graph ;
struct TYPE_3__ {int nodes; } ;


 int VEC_length (int ,int ) ;
 int tree ;

__attribute__((used)) static inline int
elim_graph_size (elim_graph g)
{
  return VEC_length (tree, g->nodes);
}
