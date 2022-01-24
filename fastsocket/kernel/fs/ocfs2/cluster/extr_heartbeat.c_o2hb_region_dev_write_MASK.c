#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct task_struct {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  ci_name; } ;
struct o2hb_region {scalar_t__ hr_blocks; scalar_t__ hr_start_block; int hr_block_bytes; scalar_t__ hr_generation; int /*<<< orphan*/ * hr_bdev; struct task_struct* hr_task; int /*<<< orphan*/  hr_steady_iterations; TYPE_2__ hr_item; int /*<<< orphan*/  hr_write_timeout_work; int /*<<< orphan*/  hr_dev_name; } ;
struct inode {int /*<<< orphan*/  i_mode; } ;
struct file {TYPE_1__* f_mapping; } ;
typedef  size_t ssize_t ;
struct TYPE_3__ {int /*<<< orphan*/  host; } ;

/* Variables and functions */
 size_t EINVAL ; 
 size_t EIO ; 
 int FMODE_READ ; 
 int FMODE_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 long INT_MAX ; 
 scalar_t__ FUNC1 (struct task_struct*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ML_ERROR ; 
 scalar_t__ O2HB_LIVE_THRESHOLD ; 
 scalar_t__ O2NM_MAX_NODES ; 
 size_t FUNC3 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,scalar_t__) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 size_t FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 
 struct file* FUNC11 (long) ; 
 int /*<<< orphan*/  FUNC12 (struct file*) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__*,int) ; 
 struct inode* FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct inode*) ; 
 struct task_struct* FUNC16 (int /*<<< orphan*/ ,struct o2hb_region*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  FUNC19 (size_t) ; 
 int /*<<< orphan*/  FUNC20 (struct o2hb_region*) ; 
 int /*<<< orphan*/  o2hb_live_lock ; 
 size_t FUNC21 (struct o2hb_region*) ; 
 size_t FUNC22 (struct o2hb_region*) ; 
 int /*<<< orphan*/  o2hb_steady_queue ; 
 int /*<<< orphan*/  o2hb_thread ; 
 int /*<<< orphan*/  o2hb_write_timeout ; 
 scalar_t__ FUNC23 () ; 
 long FUNC24 (char*,char**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *) ; 
 size_t FUNC27 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static ssize_t FUNC28(struct o2hb_region *reg,
				     const char *page,
				     size_t count)
{
	struct task_struct *hb_task;
	long fd;
	int sectsize;
	char *p = (char *)page;
	struct file *filp = NULL;
	struct inode *inode = NULL;
	ssize_t ret = -EINVAL;

	if (reg->hr_bdev)
		goto out;

	/* We can't heartbeat without having had our node number
	 * configured yet. */
	if (FUNC23() == O2NM_MAX_NODES)
		goto out;

	fd = FUNC24(p, &p, 0);
	if (!p || (*p && (*p != '\n')))
		goto out;

	if (fd < 0 || fd >= INT_MAX)
		goto out;

	filp = FUNC11(fd);
	if (filp == NULL)
		goto out;

	if (reg->hr_blocks == 0 || reg->hr_start_block == 0 ||
	    reg->hr_block_bytes == 0)
		goto out;

	inode = FUNC14(filp->f_mapping->host);
	if (inode == NULL)
		goto out;

	if (!FUNC4(inode->i_mode))
		goto out;

	reg->hr_bdev = FUNC2(filp->f_mapping->host);
	ret = FUNC9(reg->hr_bdev, FMODE_WRITE | FMODE_READ);
	if (ret) {
		reg->hr_bdev = NULL;
		goto out;
	}
	inode = NULL;

	FUNC8(reg->hr_bdev, reg->hr_dev_name);

	sectsize = FUNC7(reg->hr_bdev);
	if (sectsize != reg->hr_block_bytes) {
		FUNC18(ML_ERROR,
		     "blocksize %u incorrect for device, expected %d",
		     reg->hr_block_bytes, sectsize);
		ret = -EINVAL;
		goto out;
	}

	FUNC20(reg);

	/* Generation of zero is invalid */
	do {
		FUNC13(&reg->hr_generation,
				 sizeof(reg->hr_generation));
	} while (reg->hr_generation == 0);

	ret = FUNC21(reg);
	if (ret) {
		FUNC19(ret);
		goto out;
	}

	ret = FUNC22(reg);
	if (ret) {
		FUNC19(ret);
		goto out;
	}

	FUNC0(&reg->hr_write_timeout_work, o2hb_write_timeout);

	/*
	 * A node is considered live after it has beat LIVE_THRESHOLD
	 * times.  We're not steady until we've given them a chance
	 * _after_ our first read.
	 */
	FUNC6(&reg->hr_steady_iterations, O2HB_LIVE_THRESHOLD + 1);

	hb_task = FUNC16(o2hb_thread, reg, "o2hb-%s",
			      reg->hr_item.ci_name);
	if (FUNC1(hb_task)) {
		ret = FUNC3(hb_task);
		FUNC19(ret);
		goto out;
	}

	FUNC25(&o2hb_live_lock);
	reg->hr_task = hb_task;
	FUNC26(&o2hb_live_lock);

	ret = FUNC27(o2hb_steady_queue,
				FUNC5(&reg->hr_steady_iterations) == 0);
	if (ret) {
		/* We got interrupted (hello ptrace!).  Clean up */
		FUNC25(&o2hb_live_lock);
		hb_task = reg->hr_task;
		reg->hr_task = NULL;
		FUNC26(&o2hb_live_lock);

		if (hb_task)
			FUNC17(hb_task);
		goto out;
	}

	/* Ok, we were woken.  Make sure it wasn't by drop_item() */
	FUNC25(&o2hb_live_lock);
	hb_task = reg->hr_task;
	FUNC26(&o2hb_live_lock);

	if (hb_task)
		ret = count;
	else
		ret = -EIO;

out:
	if (filp)
		FUNC12(filp);
	if (inode)
		FUNC15(inode);
	if (ret < 0) {
		if (reg->hr_bdev) {
			FUNC10(reg->hr_bdev, FMODE_READ|FMODE_WRITE);
			reg->hr_bdev = NULL;
		}
	}
	return ret;
}