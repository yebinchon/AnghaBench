#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u64 ;
struct ufs_super_block_first {void* fs_optim; } ;
struct TYPE_4__ {int cs_nffree; } ;
struct ufs_sb_private_info {unsigned int s_fpb; scalar_t__ s_size; int s_minfree; int s_dsize; scalar_t__ s_sbbase; TYPE_1__ cs_total; } ;
struct super_block {int dummy; } ;
struct page {int dummy; } ;
struct inode {int /*<<< orphan*/  i_ino; struct super_block* i_sb; } ;
struct TYPE_6__ {scalar_t__ i_lastfrag; } ;
struct TYPE_5__ {struct ufs_sb_private_info* s_uspi; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_SYS_RESOURCE ; 
 int ENOSPC ; 
 scalar_t__ INVBLOCK ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 TYPE_3__* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  UFS_MINFREE ; 
#define  UFS_OPTSPACE 129 
#define  UFS_OPTTIME 128 
 TYPE_2__* FUNC2 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 void* FUNC4 (struct super_block*,int const) ; 
 int FUNC5 (struct super_block*,void*) ; 
 int /*<<< orphan*/  FUNC6 (struct super_block*) ; 
 void* FUNC7 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  u32 ; 
 struct ufs_super_block_first* FUNC8 (struct ufs_sb_private_info*) ; 
 scalar_t__ FUNC9 (struct inode*,scalar_t__,unsigned int,unsigned int,int*) ; 
 scalar_t__ FUNC10 (struct inode*,unsigned int,scalar_t__,scalar_t__,int*) ; 
 int /*<<< orphan*/  FUNC11 (struct inode*,scalar_t__,unsigned int,scalar_t__,scalar_t__,struct page*) ; 
 int /*<<< orphan*/  FUNC12 (struct inode*,scalar_t__,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct super_block*,void*,scalar_t__) ; 
 scalar_t__ FUNC14 (struct super_block*,void*) ; 
 unsigned int FUNC15 (struct ufs_sb_private_info*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (struct super_block*,char*,char*,unsigned long long,unsigned long long) ; 
 unsigned int FUNC17 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC18 (struct inode*,scalar_t__,unsigned int) ; 
 scalar_t__ FUNC19 (struct ufs_sb_private_info*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (struct super_block*,char*,char*,unsigned long long,unsigned int) ; 
 int /*<<< orphan*/  FUNC22 (struct super_block*) ; 

u64 FUNC23(struct inode *inode, void *p, u64 fragment,
			   u64 goal, unsigned count, int *err,
			   struct page *locked_page)
{
	struct super_block * sb;
	struct ufs_sb_private_info * uspi;
	struct ufs_super_block_first * usb1;
	unsigned cgno, oldcount, newcount;
	u64 tmp, request, result;
	
	FUNC0("ENTER, ino %lu, fragment %llu, goal %llu, count %u\n",
	     inode->i_ino, (unsigned long long)fragment,
	     (unsigned long long)goal, count);
	
	sb = inode->i_sb;
	uspi = FUNC2(sb)->s_uspi;
	usb1 = FUNC8(uspi);
	*err = -ENOSPC;

	FUNC6 (sb);
	tmp = FUNC14(sb, p);

	if (count + FUNC17(fragment) > uspi->s_fpb) {
		FUNC21(sb, "ufs_new_fragments", "internal warning"
			    " fragment %llu, count %u",
			    (unsigned long long)fragment, count);
		count = uspi->s_fpb - FUNC17(fragment); 
	}
	oldcount = FUNC17 (fragment);
	newcount = oldcount + count;

	/*
	 * Somebody else has just allocated our fragments
	 */
	if (oldcount) {
		if (!tmp) {
			FUNC16(sb, "ufs_new_fragments", "internal error, "
				  "fragment %llu, tmp %llu\n",
				  (unsigned long long)fragment,
				  (unsigned long long)tmp);
			FUNC22(sb);
			return INVBLOCK;
		}
		if (fragment < FUNC1(inode)->i_lastfrag) {
			FUNC0("EXIT (ALREADY ALLOCATED)\n");
			FUNC22 (sb);
			return 0;
		}
	}
	else {
		if (tmp) {
			FUNC0("EXIT (ALREADY ALLOCATED)\n");
			FUNC22(sb);
			return 0;
		}
	}

	/*
	 * There is not enough space for user on the device
	 */
	if (!FUNC3(CAP_SYS_RESOURCE) && FUNC19(uspi, UFS_MINFREE) <= 0) {
		FUNC22 (sb);
		FUNC0("EXIT (FAILED)\n");
		return 0;
	}

	if (goal >= uspi->s_size) 
		goal = 0;
	if (goal == 0) 
		cgno = FUNC20 (inode->i_ino);
	else
		cgno = FUNC15(uspi, goal);
	 
	/*
	 * allocate new fragment
	 */
	if (oldcount == 0) {
		result = FUNC10 (inode, cgno, goal, count, err);
		if (result) {
			FUNC13(sb, p, result);
			*err = 0;
			FUNC1(inode)->i_lastfrag =
				FUNC7(u32, FUNC1(inode)->i_lastfrag,
				      fragment + count);
			FUNC12(inode, result + oldcount,
					newcount - oldcount, locked_page != NULL);
		}
		FUNC22(sb);
		FUNC0("EXIT, result %llu\n", (unsigned long long)result);
		return result;
	}

	/*
	 * resize block
	 */
	result = FUNC9 (inode, tmp, oldcount, newcount, err);
	if (result) {
		*err = 0;
		FUNC1(inode)->i_lastfrag = FUNC7(u32, FUNC1(inode)->i_lastfrag, fragment + count);
		FUNC12(inode, result + oldcount, newcount - oldcount,
				locked_page != NULL);
		FUNC22(sb);
		FUNC0("EXIT, result %llu\n", (unsigned long long)result);
		return result;
	}

	/*
	 * allocate new block and move data
	 */
	switch (FUNC5(sb, usb1->fs_optim)) {
	    case UFS_OPTSPACE:
		request = newcount;
		if (uspi->s_minfree < 5 || uspi->cs_total.cs_nffree
		    > uspi->s_dsize * uspi->s_minfree / (2 * 100))
			break;
		usb1->fs_optim = FUNC4(sb, UFS_OPTTIME);
		break;
	    default:
		usb1->fs_optim = FUNC4(sb, UFS_OPTTIME);
	
	    case UFS_OPTTIME:
		request = uspi->s_fpb;
		if (uspi->cs_total.cs_nffree < uspi->s_dsize *
		    (uspi->s_minfree - 2) / 100)
			break;
		usb1->fs_optim = FUNC4(sb, UFS_OPTTIME);
		break;
	}
	result = FUNC10 (inode, cgno, goal, request, err);
	if (result) {
		FUNC12(inode, result + oldcount, newcount - oldcount,
				locked_page != NULL);
		FUNC11(inode, fragment - oldcount, oldcount,
				   uspi->s_sbbase + tmp,
				   uspi->s_sbbase + result, locked_page);
		FUNC13(sb, p, result);
		*err = 0;
		FUNC1(inode)->i_lastfrag = FUNC7(u32, FUNC1(inode)->i_lastfrag, fragment + count);
		FUNC22(sb);
		if (newcount < request)
			FUNC18 (inode, result + newcount, request - newcount);
		FUNC18 (inode, tmp, oldcount);
		FUNC0("EXIT, result %llu\n", (unsigned long long)result);
		return result;
	}

	FUNC22(sb);
	FUNC0("EXIT (FAILED)\n");
	return 0;
}