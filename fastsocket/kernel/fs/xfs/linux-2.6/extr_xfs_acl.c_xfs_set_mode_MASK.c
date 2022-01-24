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
struct inode {scalar_t__ i_mode; int /*<<< orphan*/  i_sb; } ;
struct iattr {int ia_valid; int /*<<< orphan*/  ia_ctime; scalar_t__ ia_mode; } ;
typedef  scalar_t__ mode_t ;

/* Variables and functions */
 int ATTR_CTIME ; 
 int ATTR_MODE ; 
 int /*<<< orphan*/  XFS_ATTR_NOACL ; 
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct iattr*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(struct inode *inode, mode_t mode)
{
	int error = 0;

	if (mode != inode->i_mode) {
		struct iattr iattr;

		iattr.ia_valid = ATTR_MODE | ATTR_CTIME;
		iattr.ia_mode = mode;
		iattr.ia_ctime = FUNC1(inode->i_sb);

		error = -FUNC2(FUNC0(inode), &iattr, XFS_ATTR_NOACL);
	}

	return error;
}