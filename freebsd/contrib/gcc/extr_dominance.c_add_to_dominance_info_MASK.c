#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  enum cdi_direction { ____Placeholder_cdi_direction } cdi_direction ;
typedef  TYPE_1__* basic_block ;
struct TYPE_4__ {scalar_t__* dom; } ;

/* Variables and functions */
 scalar_t__ DOM_NO_FAST_QUERY ; 
 scalar_t__ DOM_OK ; 
 scalar_t__* dom_computed ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/ * n_bbs_in_dom_tree ; 

void
FUNC2 (enum cdi_direction dir, basic_block bb)
{
  FUNC1 (dom_computed[dir]);
  FUNC1 (!bb->dom[dir]);

  n_bbs_in_dom_tree[dir]++;
  
  bb->dom[dir] = FUNC0 (bb);

  if (dom_computed[dir] == DOM_OK)
    dom_computed[dir] = DOM_NO_FAST_QUERY;
}