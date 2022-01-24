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
struct btrfs_disk_balance_args {void* flags; void* target; void* vend; void* vstart; void* pend; void* pstart; void* devid; void* usage; void* profiles; } ;
struct btrfs_balance_args {int /*<<< orphan*/  flags; int /*<<< orphan*/  target; int /*<<< orphan*/  vend; int /*<<< orphan*/  vstart; int /*<<< orphan*/  pend; int /*<<< orphan*/  pstart; int /*<<< orphan*/  devid; int /*<<< orphan*/  usage; int /*<<< orphan*/  profiles; } ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct btrfs_disk_balance_args*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static inline void
FUNC2(struct btrfs_disk_balance_args *disk,
			       struct btrfs_balance_args *cpu)
{
	FUNC1(disk, 0, sizeof(*disk));

	disk->profiles = FUNC0(cpu->profiles);
	disk->usage = FUNC0(cpu->usage);
	disk->devid = FUNC0(cpu->devid);
	disk->pstart = FUNC0(cpu->pstart);
	disk->pend = FUNC0(cpu->pend);
	disk->vstart = FUNC0(cpu->vstart);
	disk->vend = FUNC0(cpu->vend);
	disk->target = FUNC0(cpu->target);
	disk->flags = FUNC0(cpu->flags);
}