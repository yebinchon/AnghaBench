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
struct htab_bb_copy_original_entry {int dummy; } ;

/* Variables and functions */
 void* bb_copy ; 
 int /*<<< orphan*/  bb_copy_original_eq ; 
 int /*<<< orphan*/  bb_copy_original_hash ; 
 void* bb_original ; 
 scalar_t__ FUNC0 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 void* FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ original_copy_bb_pool ; 

void
FUNC3 (void)
{
  FUNC1 (!original_copy_bb_pool);
  original_copy_bb_pool
    = FUNC0 ("original_copy",
			 sizeof (struct htab_bb_copy_original_entry), 10);
  bb_original = FUNC2 (10, bb_copy_original_hash,
			     bb_copy_original_eq, NULL);
  bb_copy = FUNC2 (10, bb_copy_original_hash, bb_copy_original_eq, NULL);
}