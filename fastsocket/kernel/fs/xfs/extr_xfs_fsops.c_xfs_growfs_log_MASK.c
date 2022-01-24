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
struct TYPE_4__ {int /*<<< orphan*/  m_growlock; } ;
typedef  TYPE_1__ xfs_mount_t ;
typedef  int /*<<< orphan*/  xfs_growfs_log_t ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_SYS_ADMIN ; 
 int /*<<< orphan*/  EPERM ; 
 int /*<<< orphan*/  EWOULDBLOCK ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (TYPE_1__*,int /*<<< orphan*/ *) ; 

int
FUNC5(
	xfs_mount_t		*mp,
	xfs_growfs_log_t	*in)
{
	int error;

	if (!FUNC1(CAP_SYS_ADMIN))
		return FUNC0(EPERM);
	if (!FUNC2(&mp->m_growlock))
		return FUNC0(EWOULDBLOCK);
	error = FUNC4(mp, in);
	FUNC3(&mp->m_growlock);
	return error;
}