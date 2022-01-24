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
struct vfsmount {int dummy; } ;

/* Variables and functions */
 int MS_RDONLY ; 
 int FUNC0 (struct vfsmount*) ; 
 int /*<<< orphan*/  FUNC1 (struct vfsmount*) ; 
 int FUNC2 (struct vfsmount*) ; 

__attribute__((used)) static int FUNC3(struct vfsmount *mnt, int ms_flags)
{
	int error = 0;
	int readonly_request = 0;

	if (ms_flags & MS_RDONLY)
		readonly_request = 1;
	if (readonly_request == FUNC0(mnt))
		return 0;

	if (readonly_request)
		error = FUNC2(mnt);
	else
		FUNC1(mnt);
	return error;
}