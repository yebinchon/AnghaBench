#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/ * i_data; } ;
struct udf_inode_info {TYPE_2__ i_ext; } ;
struct inode {TYPE_1__* i_sb; } ;
struct TYPE_3__ {int s_flags; } ;

/* Variables and functions */
 int MS_RDONLY ; 
 struct udf_inode_info* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct inode*,int /*<<< orphan*/ ) ; 

void FUNC7(struct inode *inode)
{
	struct udf_inode_info *iinfo;
	if (!(inode->i_sb->s_flags & MS_RDONLY)) {
		FUNC3();
		FUNC4(inode);
		FUNC5();
		FUNC6(inode, 0);
		FUNC1(inode);
	}
	iinfo = FUNC0(inode);
	FUNC2(iinfo->i_ext.i_data);
	iinfo->i_ext.i_data = NULL;
}