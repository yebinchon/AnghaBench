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
struct hugepage_subpool {int count; long max_hpages; scalar_t__ used_hpages; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct hugepage_subpool* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

struct hugepage_subpool *FUNC2(long nr_blocks)
{
	struct hugepage_subpool *spool;

	spool = FUNC0(sizeof(*spool), GFP_KERNEL);
	if (!spool)
		return NULL;

	FUNC1(&spool->lock);
	spool->count = 1;
	spool->max_hpages = nr_blocks;
	spool->used_hpages = 0;

	return spool;
}