
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef enum cdi_direction { ____Placeholder_cdi_direction } cdi_direction ;
typedef TYPE_1__* basic_block ;
struct TYPE_8__ {int flags; } ;


 int BB_DUPLICATED ;
 TYPE_1__* first_dom_son (int,TYPE_1__*) ;
 TYPE_1__* next_dom_son (int,TYPE_1__*) ;

unsigned
get_dominated_by_region (enum cdi_direction dir, basic_block *region,
    unsigned n_region, basic_block *doms)
{
  unsigned n_doms = 0, i;
  basic_block dom;

  for (i = 0; i < n_region; i++)
    region[i]->flags |= BB_DUPLICATED;
  for (i = 0; i < n_region; i++)
    for (dom = first_dom_son (dir, region[i]);
  dom;
  dom = next_dom_son (dir, dom))
      if (!(dom->flags & BB_DUPLICATED))
 doms[n_doms++] = dom;
  for (i = 0; i < n_region; i++)
    region[i]->flags &= ~BB_DUPLICATED;

  return n_doms;
}
