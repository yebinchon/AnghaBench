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
struct super_block {int dummy; } ;
struct TYPE_2__ {scalar_t__ nr_unused; scalar_t__ nr_inodes; } ;

/* Variables and functions */
 int /*<<< orphan*/  NR_FILE_DIRTY ; 
 int /*<<< orphan*/  NR_UNSTABLE_NFS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__ inodes_stat ; 
 void FUNC1 (struct super_block*,scalar_t__) ; 

void FUNC2(struct super_block *sb)
{
	return FUNC1(sb, FUNC0(NR_FILE_DIRTY) +
			      FUNC0(NR_UNSTABLE_NFS) +
			      (inodes_stat.nr_inodes - inodes_stat.nr_unused));
}