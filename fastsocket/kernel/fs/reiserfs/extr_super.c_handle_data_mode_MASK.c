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
struct super_block {int dummy; } ;

/* Variables and functions */
 int REISERFS_DATA_LOG ; 
 int REISERFS_DATA_ORDERED ; 
 int REISERFS_DATA_WRITEBACK ; 
 int /*<<< orphan*/  FUNC0 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC1 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC2 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC3 (struct super_block*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct super_block*,int) ; 

__attribute__((used)) static void FUNC5(struct super_block *s, unsigned long mount_options)
{
	if (mount_options & (1 << REISERFS_DATA_LOG)) {
		if (!FUNC0(s)) {
			FUNC4(s, REISERFS_DATA_LOG);
			FUNC3(s, "switching to journaled data mode\n");
		}
	} else if (mount_options & (1 << REISERFS_DATA_ORDERED)) {
		if (!FUNC1(s)) {
			FUNC4(s, REISERFS_DATA_ORDERED);
			FUNC3(s, "switching to ordered data mode\n");
		}
	} else if (mount_options & (1 << REISERFS_DATA_WRITEBACK)) {
		if (!FUNC2(s)) {
			FUNC4(s, REISERFS_DATA_WRITEBACK);
			FUNC3(s, "switching to writeback data mode\n");
		}
	}
}