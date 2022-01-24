#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct zram {scalar_t__ init_done; TYPE_1__* disk; TYPE_4__* queue; int /*<<< orphan*/  stat64_lock; int /*<<< orphan*/  init_lock; int /*<<< orphan*/  lock; } ;
struct TYPE_15__ {struct zram* queuedata; } ;
struct TYPE_14__ {int /*<<< orphan*/  kobj; } ;
struct TYPE_13__ {int first_minor; TYPE_4__* queue; int /*<<< orphan*/  disk_name; struct zram* private_data; int /*<<< orphan*/ * fops; int /*<<< orphan*/  major; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  ZRAM_LOGICAL_BLOCK_SIZE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 TYPE_1__* FUNC1 (int) ; 
 TYPE_4__* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (char*,int) ; 
 int /*<<< orphan*/  FUNC12 (char*,...) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int,char*,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  zram_devops ; 
 int /*<<< orphan*/  zram_disk_attr_group ; 
 int /*<<< orphan*/  zram_major ; 
 int /*<<< orphan*/  zram_make_request ; 

__attribute__((used)) static int FUNC17(struct zram *zram, int device_id)
{
	int ret = 0;

	FUNC10(&zram->lock);
	FUNC10(&zram->init_lock);
	FUNC15(&zram->stat64_lock);

	zram->queue = FUNC2(GFP_KERNEL);
	if (!zram->queue) {
		FUNC11("Error allocating disk queue for device %d\n",
			device_id);
		ret = -ENOMEM;
		goto out;
	}

	FUNC7(zram->queue, zram_make_request);
	zram->queue->queuedata = zram;

	 /* gendisk structure */
	zram->disk = FUNC1(1);
	if (!zram->disk) {
		FUNC3(zram->queue);
		FUNC12("Error allocating disk structure for device %d\n",
			device_id);
		ret = -ENOMEM;
		goto out;
	}

	zram->disk->major = zram_major;
	zram->disk->first_minor = device_id;
	zram->disk->fops = &zram_devops;
	zram->disk->queue = zram->queue;
	zram->disk->private_data = zram;
	FUNC14(zram->disk->disk_name, 16, "zram%d", device_id);

	/* Actual capacity set using syfs (/sys/block/zram<id>/disksize */
	FUNC13(zram->disk, 0);

	/*
	 * To ensure that we always get PAGE_SIZE aligned
	 * and n*PAGE_SIZED sized I/O requests.
	 */
	FUNC8(zram->disk->queue, PAGE_SIZE);
	FUNC6(zram->disk->queue,
					ZRAM_LOGICAL_BLOCK_SIZE);
	FUNC4(zram->disk->queue, PAGE_SIZE);
	FUNC5(zram->disk->queue, PAGE_SIZE);

	FUNC0(zram->disk);

	ret = FUNC16(&FUNC9(zram->disk)->kobj,
				&zram_disk_attr_group);
	if (ret < 0) {
		FUNC12("Error creating sysfs group");
		goto out;
	}

	zram->init_done = 0;

out:
	return ret;
}