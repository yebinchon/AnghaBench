#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  enum cdi_direction { ____Placeholder_cdi_direction } cdi_direction ;
typedef  TYPE_1__* basic_block ;
struct TYPE_8__ {int flags; } ;

/* Variables and functions */
 int BB_DUPLICATED ; 
 TYPE_1__* FUNC0 (int,TYPE_1__*) ; 
 TYPE_1__* FUNC1 (int,TYPE_1__*) ; 

unsigned
FUNC2 (enum cdi_direction dir, basic_block *region,
			 unsigned n_region, basic_block *doms)
{
  unsigned n_doms = 0, i;
  basic_block dom;

  for (i = 0; i < n_region; i++)
    region[i]->flags |= BB_DUPLICATED;
  for (i = 0; i < n_region; i++)
    for (dom = FUNC0 (dir, region[i]);
	 dom;
	 dom = FUNC1 (dir, dom))
      if (!(dom->flags & BB_DUPLICATED))
	doms[n_doms++] = dom;
  for (i = 0; i < n_region; i++)
    region[i]->flags &= ~BB_DUPLICATED;

  return n_doms;
}