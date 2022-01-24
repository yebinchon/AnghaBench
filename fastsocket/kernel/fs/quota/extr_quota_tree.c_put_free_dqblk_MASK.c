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
typedef  int /*<<< orphan*/  uint ;
struct qtree_mem_dqinfo {int /*<<< orphan*/  dqi_type; int /*<<< orphan*/  dqi_sb; int /*<<< orphan*/  dqi_free_blk; } ;
struct qt_disk_dqdbheader {int /*<<< orphan*/  dqdh_entries; void* dqdh_prev_free; void* dqdh_next_free; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct qtree_mem_dqinfo*,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC4(struct qtree_mem_dqinfo *info, char *buf, uint blk)
{
	struct qt_disk_dqdbheader *dh = (struct qt_disk_dqdbheader *)buf;
	int err;

	dh->dqdh_next_free = FUNC1(info->dqi_free_blk);
	dh->dqdh_prev_free = FUNC1(0);
	dh->dqdh_entries = FUNC0(0);
	err = FUNC3(info, blk, buf);
	if (err < 0)
		return err;
	info->dqi_free_blk = blk;
	FUNC2(info->dqi_sb, info->dqi_type);
	return 0;
}