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
struct vxfs_sb_info {int /*<<< orphan*/  vsi_bp; int /*<<< orphan*/  vsi_stilist; int /*<<< orphan*/  vsi_ilist; int /*<<< orphan*/  vsi_fship; } ;
struct super_block {int dummy; } ;

/* Variables and functions */
 struct vxfs_sb_info* FUNC0 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct vxfs_sb_info*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(struct super_block *sbp)
{
	struct vxfs_sb_info	*infp = FUNC0(sbp);

	FUNC3();

	FUNC5(infp->vsi_fship);
	FUNC5(infp->vsi_ilist);
	FUNC5(infp->vsi_stilist);

	FUNC1(infp->vsi_bp);
	FUNC2(infp);

	FUNC4();
}