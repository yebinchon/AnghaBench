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
struct radix_tree_root {int dummy; } ;

/* Variables and functions */
 unsigned long LONG_MAX ; 
 int /*<<< orphan*/  FUNC0 (struct radix_tree_root*,unsigned long) ; 

unsigned long FUNC1(struct radix_tree_root *root,
				   unsigned long index, unsigned long max_scan)
{
	unsigned long i;

	for (i = 0; i < max_scan; i++) {
		if (!FUNC0(root, index))
			break;
		index--;
		if (index == LONG_MAX)
			break;
	}

	return index;
}