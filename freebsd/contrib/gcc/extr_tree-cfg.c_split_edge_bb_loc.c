
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_1__* edge ;
typedef TYPE_2__* basic_block ;
struct TYPE_8__ {struct TYPE_8__* prev_bb; } ;
struct TYPE_7__ {TYPE_2__* src; TYPE_2__* dest; } ;


 scalar_t__ find_edge (TYPE_2__*,TYPE_2__*) ;

__attribute__((used)) static basic_block
split_edge_bb_loc (edge edge_in)
{
  basic_block dest = edge_in->dest;

  if (dest->prev_bb && find_edge (dest->prev_bb, dest))
    return edge_in->src;
  else
    return dest->prev_bb;
}
