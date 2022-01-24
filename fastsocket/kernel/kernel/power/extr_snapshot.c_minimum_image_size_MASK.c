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
 int /*<<< orphan*/  NR_ACTIVE_ANON ; 
 int /*<<< orphan*/  NR_ACTIVE_FILE ; 
 int /*<<< orphan*/  NR_FILE_MAPPED ; 
 int /*<<< orphan*/  NR_INACTIVE_ANON ; 
 int /*<<< orphan*/  NR_INACTIVE_FILE ; 
 int /*<<< orphan*/  NR_SLAB_RECLAIMABLE ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned long FUNC1(unsigned long saveable)
{
	unsigned long size;

	size = FUNC0(NR_SLAB_RECLAIMABLE)
		+ FUNC0(NR_ACTIVE_ANON)
		+ FUNC0(NR_INACTIVE_ANON)
		+ FUNC0(NR_ACTIVE_FILE)
		+ FUNC0(NR_INACTIVE_FILE)
		- FUNC0(NR_FILE_MAPPED);

	return saveable <= size ? 0 : saveable - size;
}