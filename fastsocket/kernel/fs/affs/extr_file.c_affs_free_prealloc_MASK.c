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
struct inode {int /*<<< orphan*/  i_ino; struct super_block* i_sb; } ;
struct TYPE_2__ {int /*<<< orphan*/  i_lastalloc; scalar_t__ i_pa_cnt; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct super_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 

void
FUNC3(struct inode *inode)
{
	struct super_block *sb = inode->i_sb;

	FUNC2("AFFS: free_prealloc(ino=%lu)\n", inode->i_ino);

	while (FUNC0(inode)->i_pa_cnt) {
		FUNC0(inode)->i_pa_cnt--;
		FUNC1(sb, ++FUNC0(inode)->i_lastalloc);
	}
}