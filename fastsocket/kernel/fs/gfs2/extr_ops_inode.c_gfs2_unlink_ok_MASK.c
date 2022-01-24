#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct qstr {int dummy; } ;
struct TYPE_5__ {int i_mode; scalar_t__ i_uid; } ;
struct gfs2_inode {TYPE_1__ i_inode; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_FOWNER ; 
 int EPERM ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int MAY_EXEC ; 
 int MAY_WRITE ; 
 int S_ISVTX ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 () ; 
 int FUNC4 (TYPE_1__*,struct qstr const*,struct gfs2_inode const*) ; 
 int FUNC5 (TYPE_1__*,int) ; 

__attribute__((used)) static int FUNC6(struct gfs2_inode *dip, const struct qstr *name,
			  const struct gfs2_inode *ip)
{
	int error;

	if (FUNC1(&ip->i_inode) || FUNC0(&ip->i_inode))
		return -EPERM;

	if ((dip->i_inode.i_mode & S_ISVTX) &&
	    dip->i_inode.i_uid != FUNC3() &&
	    ip->i_inode.i_uid != FUNC3() && !FUNC2(CAP_FOWNER))
		return -EPERM;

	if (FUNC0(&dip->i_inode))
		return -EPERM;

	error = FUNC5(&dip->i_inode, MAY_WRITE | MAY_EXEC);
	if (error)
		return error;

	error = FUNC4(&dip->i_inode, name, ip);
	if (error)
		return error;

	return 0;
}