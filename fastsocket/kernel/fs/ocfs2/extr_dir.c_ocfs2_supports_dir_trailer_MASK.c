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
struct ocfs2_super {int dummy; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct TYPE_2__ {int ip_dyn_features; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct inode*) ; 
 int OCFS2_INLINE_DATA_FL ; 
 struct ocfs2_super* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct inode*) ; 
 scalar_t__ FUNC3 (struct ocfs2_super*) ; 

__attribute__((used)) static int FUNC4(struct inode *dir)
{
	struct ocfs2_super *osb = FUNC1(dir->i_sb);

	if (FUNC0(dir)->ip_dyn_features & OCFS2_INLINE_DATA_FL)
		return 0;

	return FUNC3(osb) || FUNC2(dir);
}