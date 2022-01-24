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
struct hd_struct {int partno; int /*<<< orphan*/  holder_dir; int /*<<< orphan*/  rcu_head; int /*<<< orphan*/  policy; void* nr_sects; int /*<<< orphan*/  discard_alignment; int /*<<< orphan*/  alignment_offset; void* start_sect; } ;
struct gendisk {TYPE_1__* queue; struct disk_part_tbl* part_tbl; } ;
struct disk_part_tbl {scalar_t__* part; } ;
struct device {int /*<<< orphan*/  kobj; int /*<<< orphan*/  devt; struct device* parent; int /*<<< orphan*/ * type; int /*<<< orphan*/ * class; } ;
typedef  void* sector_t ;
typedef  int /*<<< orphan*/  dev_t ;
struct TYPE_2__ {int /*<<< orphan*/  limits; } ;

/* Variables and functions */
 int ADDPART_FLAG_WHOLEDISK ; 
 int EBUSY ; 
 int ENOMEM ; 
 struct hd_struct* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  KOBJ_ADD ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct hd_struct*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  block_class ; 
 int /*<<< orphan*/  dev_attr_whole_disk ; 
 int /*<<< orphan*/  FUNC5 (struct device*) ; 
 char* FUNC6 (struct device*) ; 
 int /*<<< orphan*/  FUNC7 (struct device*,char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct device*,int) ; 
 int FUNC9 (struct device*) ; 
 int FUNC10 (struct device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct device*) ; 
 int /*<<< orphan*/  FUNC12 (struct device*) ; 
 int FUNC13 (struct gendisk*,int) ; 
 struct device* FUNC14 (struct gendisk*) ; 
 int /*<<< orphan*/  FUNC15 (struct hd_struct*) ; 
 int /*<<< orphan*/  FUNC16 (struct gendisk*) ; 
 int /*<<< orphan*/  FUNC17 (struct hd_struct*) ; 
 scalar_t__ FUNC18 (char const) ; 
 int /*<<< orphan*/  FUNC19 (struct hd_struct*) ; 
 int /*<<< orphan*/  FUNC20 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct hd_struct* FUNC23 (int,int /*<<< orphan*/ ) ; 
 struct device* FUNC24 (struct hd_struct*) ; 
 int /*<<< orphan*/  part_type ; 
 int /*<<< orphan*/  FUNC25 (struct device*) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC28 (scalar_t__,struct hd_struct*) ; 
 int FUNC29 (char const*) ; 

struct hd_struct *FUNC30(struct gendisk *disk, int partno,
				sector_t start, sector_t len, int flags)
{
	struct hd_struct *p;
	dev_t devt = FUNC2(0, 0);
	struct device *ddev = FUNC14(disk);
	struct device *pdev;
	struct disk_part_tbl *ptbl;
	const char *dname;
	int err;

	err = FUNC13(disk, partno);
	if (err)
		return FUNC0(err);
	ptbl = disk->part_tbl;

	if (ptbl->part[partno])
		return FUNC0(-EBUSY);

	p = FUNC23(sizeof(*p), GFP_KERNEL);
	if (!p)
		return FUNC0(-EBUSY);

	if (!FUNC17(p)) {
		err = -ENOMEM;
		goto out_free;
	}
	pdev = FUNC24(p);

	p->start_sect = start;
	p->alignment_offset =
		FUNC26(&disk->queue->limits, start);
	p->discard_alignment =
		FUNC27(&disk->queue->limits, start);
	p->nr_sects = len;
	p->partno = partno;
	p->policy = FUNC16(disk);

	dname = FUNC6(ddev);
	if (FUNC18(dname[FUNC29(dname) - 1]))
		FUNC7(pdev, "%sp%d", dname, partno);
	else
		FUNC7(pdev, "%s%d", dname, partno);

	FUNC12(pdev);
	pdev->class = &block_class;
	pdev->type = &part_type;
	pdev->parent = ddev;

	err = FUNC3(p, &devt);
	if (err)
		goto out_free_stats;
	pdev->devt = devt;

	/* delay uevent until 'holders' subdir is created */
	FUNC8(pdev, 1);
	err = FUNC9(pdev);
	if (err)
		goto out_put;

	err = -ENOMEM;
	p->holder_dir = FUNC20("holders", &pdev->kobj);
	if (!p->holder_dir)
		goto out_del;

	FUNC8(pdev, 0);
	if (flags & ADDPART_FLAG_WHOLEDISK) {
		err = FUNC10(pdev, &dev_attr_whole_disk);
		if (err)
			goto out_del;
	}

	/* everything is up and running, commence */
	FUNC1(&p->rcu_head);
	FUNC28(ptbl->part[partno], p);

	/* suppress uevent if the disk supresses it */
	if (!FUNC5(ddev))
		FUNC22(&pdev->kobj, KOBJ_ADD);

	return p;

out_free_stats:
	FUNC15(p);
out_free:
	FUNC19(p);
	return FUNC0(err);
out_del:
	FUNC21(p->holder_dir);
	FUNC11(pdev);
out_put:
	FUNC25(pdev);
	FUNC4(devt);
	return FUNC0(err);
}