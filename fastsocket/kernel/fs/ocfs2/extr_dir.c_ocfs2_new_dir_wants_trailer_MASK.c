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
struct ocfs2_super {int dummy; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;

/* Variables and functions */
 struct ocfs2_super* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct ocfs2_super*) ; 
 scalar_t__ FUNC2 (struct ocfs2_super*) ; 

__attribute__((used)) static int FUNC3(struct inode *dir)
{
	struct ocfs2_super *osb = FUNC0(dir->i_sb);

	return FUNC1(osb) ||
		FUNC2(osb);
}