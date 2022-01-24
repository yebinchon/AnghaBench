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
struct hd_struct {int /*<<< orphan*/  rcu_head; int /*<<< orphan*/  holder_dir; } ;
struct gendisk {struct disk_part_tbl* part_tbl; } ;
struct disk_part_tbl {int len; struct hd_struct* last_lookup; struct hd_struct** part; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  delete_partition_rcu_cb ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct hd_struct*) ; 
 int /*<<< orphan*/  FUNC5 (struct hd_struct*) ; 
 int /*<<< orphan*/  FUNC6 (struct hd_struct*,int /*<<< orphan*/ *) ; 

void FUNC7(struct gendisk *disk, int partno)
{
	struct disk_part_tbl *ptbl = disk->part_tbl;
	struct hd_struct *part;

	if (partno >= ptbl->len)
		return;

	part = ptbl->part[partno];
	if (!part)
		return;

	FUNC6(ptbl->part[partno], NULL);
	FUNC6(ptbl->last_lookup, NULL);
	FUNC3(part->holder_dir);
	FUNC2(FUNC5(part));
	FUNC0(FUNC4(part));

	FUNC1(&part->rcu_head, delete_partition_rcu_cb);
}