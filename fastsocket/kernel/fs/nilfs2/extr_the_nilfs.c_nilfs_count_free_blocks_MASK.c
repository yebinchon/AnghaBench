#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct the_nilfs {int ns_blocks_per_segment; int /*<<< orphan*/  ns_sufile; } ;
struct inode {int dummy; } ;
typedef  int sector_t ;
struct TYPE_2__ {int /*<<< orphan*/  mi_sem; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int) ; 
 struct inode* FUNC3 (struct the_nilfs*) ; 
 int FUNC4 (int /*<<< orphan*/ ,unsigned long*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int FUNC6(struct the_nilfs *nilfs, sector_t *nblocks)
{
	struct inode *dat = FUNC3(nilfs);
	unsigned long ncleansegs;
	int err;

	FUNC1(&FUNC0(dat)->mi_sem);	/* XXX */
	err = FUNC4(nilfs->ns_sufile, &ncleansegs);
	FUNC5(&FUNC0(dat)->mi_sem);	/* XXX */
	if (FUNC2(!err))
		*nblocks = (sector_t)ncleansegs * nilfs->ns_blocks_per_segment;
	return err;
}