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
struct kvm_stats_debugfs_item {int /*<<< orphan*/  dentry; scalar_t__ name; } ;

/* Variables and functions */
 struct kvm_stats_debugfs_item* debugfs_entries ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kvm_debugfs_dir ; 

__attribute__((used)) static void FUNC1(void)
{
	struct kvm_stats_debugfs_item *p;

	for (p = debugfs_entries; p->name; ++p)
		FUNC0(p->dentry);
	FUNC0(kvm_debugfs_dir);
}