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
struct super_block {scalar_t__ s_blocksize_bits; int /*<<< orphan*/  s_bdev; } ;
struct jfs_log {scalar_t__ l2bsize; int /*<<< orphan*/  sb_list; scalar_t__ size; int /*<<< orphan*/  base; int /*<<< orphan*/  bdev; int /*<<< orphan*/  flag; int /*<<< orphan*/  syncwait; } ;
struct TYPE_2__ {struct jfs_log* log; int /*<<< orphan*/  log_list; int /*<<< orphan*/  logpxd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 (struct super_block*) ; 
 scalar_t__ L2LOGPSIZE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct jfs_log*) ; 
 struct jfs_log* FUNC7 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC10 (struct jfs_log*) ; 
 int /*<<< orphan*/  log_INLINELOG ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC12(struct super_block *sb)
{
	struct jfs_log *log;
	int rc;

	if (!(log = FUNC7(sizeof(struct jfs_log), GFP_KERNEL)))
		return -ENOMEM;
	FUNC1(&log->sb_list);
	FUNC4(&log->syncwait);

	FUNC11(log_INLINELOG, &log->flag);
	log->bdev = sb->s_bdev;
	log->base = FUNC3(&FUNC2(sb)->logpxd);
	log->size = FUNC8(&FUNC2(sb)->logpxd) >>
	    (L2LOGPSIZE - sb->s_blocksize_bits);
	log->l2bsize = sb->s_blocksize_bits;
	FUNC0(L2LOGPSIZE >= sb->s_blocksize_bits);

	/*
	 * initialize log.
	 */
	if ((rc = FUNC10(log))) {
		FUNC6(log);
		FUNC5("lmLogOpen: exit(%d)", rc);
		return rc;
	}

	FUNC9(&FUNC2(sb)->log_list, &log->sb_list);
	FUNC2(sb)->log = log;

	return rc;
}