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
struct msdos_dir_entry {int attr; int /*<<< orphan*/  name; } ;
struct inode {int dummy; } ;
struct buffer_head {int dummy; } ;
typedef  int /*<<< orphan*/  loff_t ;

/* Variables and functions */
 int ATTR_VOLUME ; 
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct inode*,int /*<<< orphan*/ *,struct buffer_head**,struct msdos_dir_entry**) ; 

__attribute__((used)) static int FUNC2(struct inode *dir, loff_t *pos,
			       struct buffer_head **bh,
			       struct msdos_dir_entry **de)
{
	while (FUNC1(dir, pos, bh, de) >= 0) {
		/* free entry or long name entry or volume label */
		if (!FUNC0((*de)->name) && !((*de)->attr & ATTR_VOLUME))
			return 0;
	}
	return -ENOENT;
}