#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct super_block {scalar_t__ s_bdev; } ;
struct TYPE_5__ {char* name; int ra_pages; int /*<<< orphan*/  capabilities; int /*<<< orphan*/  unplug_io_fn; } ;
struct fuse_conn {int bdi_initialized; TYPE_1__ bdi; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  BDI_CAP_NO_ACCT_WB ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int PAGE_CACHE_SIZE ; 
 int VM_MAX_READAHEAD ; 
 int FUNC2 (TYPE_1__*) ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  default_unplug_io_fn ; 

__attribute__((used)) static int FUNC6(struct fuse_conn *fc, struct super_block *sb)
{
	int err;

	fc->bdi.name = "fuse";
	fc->bdi.ra_pages = (VM_MAX_READAHEAD * 1024) / PAGE_CACHE_SIZE;
	fc->bdi.unplug_io_fn = default_unplug_io_fn;
	/* fuse does it's own writeback accounting */
	fc->bdi.capabilities = BDI_CAP_NO_ACCT_WB;

	err = FUNC2(&fc->bdi);
	if (err)
		return err;

	fc->bdi_initialized = 1;

	if (sb->s_bdev) {
		err =  FUNC3(&fc->bdi, NULL, "%u:%u-fuseblk",
				    FUNC0(fc->dev), FUNC1(fc->dev));
	} else {
		err = FUNC4(&fc->bdi, fc->dev);
	}

	if (err)
		return err;

	/*
	 * For a single fuse filesystem use max 1% of dirty +
	 * writeback threshold.
	 *
	 * This gives about 1M of write buffer for memory maps on a
	 * machine with 1G and 10% dirty_ratio, which should be more
	 * than enough.
	 *
	 * Privileged users can raise it by writing to
	 *
	 *    /sys/class/bdi/<bdi>/max_ratio
	 */
	FUNC5(&fc->bdi, 1);

	return 0;
}