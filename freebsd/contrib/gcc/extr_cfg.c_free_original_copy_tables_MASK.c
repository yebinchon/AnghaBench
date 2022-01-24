#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 int /*<<< orphan*/ * bb_copy ; 
 int /*<<< orphan*/ * bb_original ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * original_copy_bb_pool ; 

void
FUNC3 (void)
{
  FUNC1 (original_copy_bb_pool);
  FUNC2 (bb_copy);
  FUNC2 (bb_original);
  FUNC0 (original_copy_bb_pool);
  bb_copy = NULL;
  bb_original = NULL;
  original_copy_bb_pool = NULL;
}