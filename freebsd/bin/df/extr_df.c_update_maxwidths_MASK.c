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
struct statfs {scalar_t__ f_ffree; scalar_t__ f_files; int /*<<< orphan*/  f_bsize; scalar_t__ f_bavail; scalar_t__ f_bfree; scalar_t__ f_blocks; int /*<<< orphan*/  f_fstypename; int /*<<< orphan*/  f_mntfromname; } ;
struct maxwidths {void* ifree; void* iused; void* avail; void* used; void* total; void* fstype; void* mntfrom; } ;
typedef  scalar_t__ int64_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,int /*<<< orphan*/ ,long) ; 
 int /*<<< orphan*/  FUNC1 (int*,long*) ; 
 void* FUNC2 (void*,int) ; 
 int FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(struct maxwidths *mwp, const struct statfs *sfsp)
{
	static long blocksize = 0;
	int dummy;

	if (blocksize == 0)
		FUNC1(&dummy, &blocksize);

	mwp->mntfrom = FUNC2(mwp->mntfrom, (int)FUNC4(sfsp->f_mntfromname));
	mwp->fstype = FUNC2(mwp->fstype, (int)FUNC4(sfsp->f_fstypename));
	mwp->total = FUNC2(mwp->total, FUNC3(
	    FUNC0((int64_t)sfsp->f_blocks, sfsp->f_bsize, blocksize)));
	mwp->used = FUNC2(mwp->used,
	    FUNC3(FUNC0((int64_t)sfsp->f_blocks -
	    (int64_t)sfsp->f_bfree, sfsp->f_bsize, blocksize)));
	mwp->avail = FUNC2(mwp->avail, FUNC3(FUNC0(sfsp->f_bavail,
	    sfsp->f_bsize, blocksize)));
	mwp->iused = FUNC2(mwp->iused, FUNC3((int64_t)sfsp->f_files -
	    sfsp->f_ffree));
	mwp->ifree = FUNC2(mwp->ifree, FUNC3(sfsp->f_ffree));
}