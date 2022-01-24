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
struct btrfs_disk_balance_args {int /*<<< orphan*/  flags; int /*<<< orphan*/  target; int /*<<< orphan*/  vend; int /*<<< orphan*/  vstart; int /*<<< orphan*/  pend; int /*<<< orphan*/  pstart; int /*<<< orphan*/  devid; int /*<<< orphan*/  usage; int /*<<< orphan*/  profiles; } ;
struct btrfs_balance_args {void* flags; void* target; void* vend; void* vstart; void* pend; void* pstart; void* devid; void* usage; void* profiles; } ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct btrfs_balance_args*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static inline void
FUNC2(struct btrfs_balance_args *cpu,
			       struct btrfs_disk_balance_args *disk)
{
	FUNC1(cpu, 0, sizeof(*cpu));

	cpu->profiles = FUNC0(disk->profiles);
	cpu->usage = FUNC0(disk->usage);
	cpu->devid = FUNC0(disk->devid);
	cpu->pstart = FUNC0(disk->pstart);
	cpu->pend = FUNC0(disk->pend);
	cpu->vstart = FUNC0(disk->vstart);
	cpu->vend = FUNC0(disk->vend);
	cpu->target = FUNC0(disk->target);
	cpu->flags = FUNC0(disk->flags);
}