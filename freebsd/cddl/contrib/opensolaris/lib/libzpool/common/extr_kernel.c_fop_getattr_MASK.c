#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  v_fd; } ;
typedef  TYPE_1__ vnode_t ;
struct TYPE_6__ {int /*<<< orphan*/  va_size; } ;
typedef  TYPE_2__ vattr_t ;
struct stat64 {int /*<<< orphan*/  st_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int errno ; 
 int FUNC1 (int /*<<< orphan*/ ,struct stat64*) ; 

int
FUNC2(vnode_t *vp, vattr_t *vap)
{
	struct stat64 st;

	if (FUNC1(vp->v_fd, &st) == -1) {
		FUNC0(vp->v_fd);
		return (errno);
	}

	vap->va_size = st.st_size;
	return (0);
}