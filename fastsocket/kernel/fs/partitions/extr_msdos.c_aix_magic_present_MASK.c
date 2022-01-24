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
struct partition {scalar_t__ sys_ind; } ;
struct block_device {int dummy; } ;
typedef  int /*<<< orphan*/  Sector ;

/* Variables and functions */
 unsigned char AIX_LABEL_MAGIC1 ; 
 unsigned char AIX_LABEL_MAGIC2 ; 
 unsigned char AIX_LABEL_MAGIC3 ; 
 unsigned char AIX_LABEL_MAGIC4 ; 
 scalar_t__ LINUX_DATA_PARTITION ; 
 scalar_t__ LINUX_LVM_PARTITION ; 
 scalar_t__ LINUX_RAID_PARTITION ; 
 scalar_t__ LINUX_SWAP_PARTITION ; 
 scalar_t__ FUNC0 (struct partition*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned char* FUNC2 (struct block_device*,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(unsigned char *p, struct block_device *bdev)
{
	struct partition *pt = (struct partition *) (p + 0x1be);
	Sector sect;
	unsigned char *d;
	int slot, ret = 0;

	if (!(p[0] == AIX_LABEL_MAGIC1 &&
		p[1] == AIX_LABEL_MAGIC2 &&
		p[2] == AIX_LABEL_MAGIC3 &&
		p[3] == AIX_LABEL_MAGIC4))
		return 0;
	/* Assume the partition table is valid if Linux partitions exists */
	for (slot = 1; slot <= 4; slot++, pt++) {
		if (pt->sys_ind == LINUX_SWAP_PARTITION ||
			pt->sys_ind == LINUX_RAID_PARTITION ||
			pt->sys_ind == LINUX_DATA_PARTITION ||
			pt->sys_ind == LINUX_LVM_PARTITION ||
			FUNC0(pt))
			return 0;
	}
	d = FUNC2(bdev, 7, &sect);
	if (d) {
		if (d[0] == '_' && d[1] == 'L' && d[2] == 'V' && d[3] == 'M')
			ret = 1;
		FUNC1(sect);
	};
	return ret;
}