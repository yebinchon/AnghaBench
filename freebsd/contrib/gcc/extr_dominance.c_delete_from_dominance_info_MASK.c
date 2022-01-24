#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  enum cdi_direction { ____Placeholder_cdi_direction } cdi_direction ;
typedef  TYPE_1__* basic_block ;
struct TYPE_3__ {int /*<<< orphan*/ ** dom; } ;

/* Variables and functions */
 scalar_t__ DOM_NO_FAST_QUERY ; 
 scalar_t__ DOM_OK ; 
 scalar_t__* dom_computed ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/ * n_bbs_in_dom_tree ; 

void
FUNC2 (enum cdi_direction dir, basic_block bb)
{
  FUNC1 (dom_computed[dir]);

  FUNC0 (bb->dom[dir]);
  bb->dom[dir] = NULL;
  n_bbs_in_dom_tree[dir]--;

  if (dom_computed[dir] == DOM_OK)
    dom_computed[dir] = DOM_NO_FAST_QUERY;
}