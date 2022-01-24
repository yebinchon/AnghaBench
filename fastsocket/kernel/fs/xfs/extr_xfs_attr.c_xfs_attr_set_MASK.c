#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  i_mount; } ;
typedef  TYPE_1__ xfs_inode_t ;
struct xfs_name {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct xfs_name*,unsigned char const*) ; 
 int FUNC3 (TYPE_1__*,struct xfs_name*,unsigned char*,int,int) ; 
 int /*<<< orphan*/  xs_attr_set ; 

int
FUNC4(
	xfs_inode_t	*dp,
	const unsigned char *name,
	unsigned char	*value,
	int		valuelen,
	int		flags)
{
	int             error;
	struct xfs_name	xname;

	FUNC1(xs_attr_set);

	if (FUNC0(dp->i_mount))
		return (EIO);

	error = FUNC2(&xname, name);
	if (error)
		return error;

	return FUNC3(dp, &xname, value, valuelen, flags);
}