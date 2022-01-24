#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct eh_region {scalar_t__ tree_label; int /*<<< orphan*/  label; } ;
typedef  int /*<<< orphan*/  rtx ;
struct TYPE_4__ {TYPE_1__* eh; } ;
struct TYPE_3__ {int last_region_number; int /*<<< orphan*/  region_array; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 struct eh_region* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 TYPE_2__* cfun ; 
 int /*<<< orphan*/  eh_region ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void
FUNC4 (void)
{
  rtx insns = FUNC2 ();
  int i, n = cfun->eh->last_region_number;

  /* Most of the work is already done at the tree level.  All we need to
     do is collect the rtl labels that correspond to the tree labels that
     collect the rtl labels that correspond to the tree labels
     we allocated earlier.  */
  for (i = 1; i <= n; ++i)
    {
      struct eh_region *region;

      region = FUNC1 (eh_region, cfun->eh->region_array, i);
      if (region && region->tree_label)
	region->label = FUNC0 (region->tree_label);
    }

  FUNC3 (insns);
}