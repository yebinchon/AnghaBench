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
struct ocfs2_write_ctxt {int /*<<< orphan*/  w_first_new_cpos; } ;
struct ocfs2_super {int dummy; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
typedef  unsigned int loff_t ;

/* Variables and functions */
 struct ocfs2_super* FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC4 (struct inode*,unsigned int,unsigned int) ; 
 scalar_t__ FUNC5 (struct ocfs2_super*) ; 

__attribute__((used)) static int FUNC6(struct inode *inode, loff_t pos,
					unsigned len,
					struct ocfs2_write_ctxt *wc)
{
	int ret;
	struct ocfs2_super *osb = FUNC0(inode->i_sb);
	loff_t newsize = pos + len;

	if (FUNC5(osb))
		return 0;

	if (newsize <= FUNC1(inode))
		return 0;

	ret = FUNC4(inode, newsize, pos);
	if (ret)
		FUNC2(ret);

	wc->w_first_new_cpos =
		FUNC3(inode->i_sb, FUNC1(inode));

	return ret;
}