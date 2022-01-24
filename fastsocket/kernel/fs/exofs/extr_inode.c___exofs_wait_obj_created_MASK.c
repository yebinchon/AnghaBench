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
struct exofs_i_info {int /*<<< orphan*/  vfs_inode; int /*<<< orphan*/  i_wq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct exofs_i_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct exofs_i_info*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC6(struct exofs_i_info *oi)
{
	if (!FUNC3(oi)) {
		FUNC0(!FUNC2(oi));
		FUNC5(oi->i_wq, FUNC3(oi));
	}
	return FUNC4(FUNC1(&oi->vfs_inode)) ? -EIO : 0;
}