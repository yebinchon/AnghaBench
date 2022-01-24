#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {TYPE_3__* zfs_hdl; int /*<<< orphan*/  zfs_name; } ;
typedef  TYPE_1__ zfs_handle_t ;
struct TYPE_11__ {int /*<<< orphan*/  zc_cookie; int /*<<< orphan*/  zc_name; } ;
typedef  TYPE_2__ zfs_cmd_t ;
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_12__ {int /*<<< orphan*/  libzfs_fd; } ;

/* Variables and functions */
#define  ENOENT 130 
#define  ENOMEM 129 
#define  ESRCH 128 
 int /*<<< orphan*/  TEXT_DOMAIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int errno ; 
 int FUNC1 (int /*<<< orphan*/ ,unsigned long,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int FUNC5 (TYPE_3__*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(zfs_handle_t *zhp, unsigned long arg, zfs_cmd_t *zc)
{
	int rc;
	uint64_t	orig_cookie;

	orig_cookie = zc->zc_cookie;
top:
	(void) FUNC2(zc->zc_name, zhp->zfs_name, sizeof (zc->zc_name));
	rc = FUNC1(zhp->zfs_hdl->libzfs_fd, arg, zc);

	if (rc == -1) {
		switch (errno) {
		case ENOMEM:
			/* expand nvlist memory and try again */
			if (FUNC3(zhp->zfs_hdl, zc) != 0) {
				FUNC4(zc);
				return (-1);
			}
			zc->zc_cookie = orig_cookie;
			goto top;
		/*
		 * An errno value of ESRCH indicates normal completion.
		 * If ENOENT is returned, then the underlying dataset
		 * has been removed since we obtained the handle.
		 */
		case ESRCH:
		case ENOENT:
			rc = 1;
			break;
		default:
			rc = FUNC5(zhp->zfs_hdl, errno,
			    FUNC0(TEXT_DOMAIN,
			    "cannot iterate filesystems"));
			break;
		}
	}
	return (rc);
}