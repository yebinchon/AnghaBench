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
struct xfs_inode {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  i_mutex; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct xfs_inode*) ; 
 int XFS_IOLOCK_EXCL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct xfs_inode*,int) ; 

__attribute__((used)) static inline void
FUNC3(
	struct xfs_inode	*ip,
	int			type)
{
	if (type & XFS_IOLOCK_EXCL)
		FUNC1(&FUNC0(ip)->i_mutex);
	FUNC2(ip, type);
}