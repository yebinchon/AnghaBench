#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ zfs_type; int /*<<< orphan*/  zfs_name; TYPE_3__* zfs_hdl; } ;
typedef  TYPE_1__ zfs_handle_t ;
struct TYPE_10__ {int zc_nvlist_dst_size; uintptr_t zc_nvlist_dst; int /*<<< orphan*/  zc_name; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_2__ zfs_cmd_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
struct TYPE_11__ {int /*<<< orphan*/  libzfs_fd; } ;
typedef  TYPE_3__ libzfs_handle_t ;
typedef  int /*<<< orphan*/  errbuf ;

/* Variables and functions */
#define  EINVAL 131 
#define  ENOENT 130 
#define  ENOMEM 129 
#define  ENOTSUP 128 
 int /*<<< orphan*/  EZFS_BADTYPE ; 
 int /*<<< orphan*/  EZFS_BADVERSION ; 
 int /*<<< orphan*/  EZFS_NOENT ; 
 int /*<<< orphan*/  EZFS_NOMEM ; 
 int /*<<< orphan*/  TEXT_DOMAIN ; 
 int /*<<< orphan*/  ZFS_IOC_GET_FSACL ; 
 scalar_t__ ZFS_TYPE_FILESYSTEM ; 
 scalar_t__ ZFS_TYPE_VOLUME ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 char* FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 void* FUNC4 (int) ; 
 int FUNC5 (void*,int,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char*,int /*<<< orphan*/ ) ; 
 char* FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC9 (TYPE_3__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*,char*) ; 
 int FUNC11 (TYPE_3__*,int,char*) ; 

int
FUNC12(zfs_handle_t *zhp, nvlist_t **nvl)
{
	zfs_cmd_t zc = { 0 };
	libzfs_handle_t *hdl = zhp->zfs_hdl;
	int nvsz = 2048;
	void *nvbuf;
	int err = 0;
	char errbuf[1024];

	FUNC0(zhp->zfs_type == ZFS_TYPE_VOLUME ||
	    zhp->zfs_type == ZFS_TYPE_FILESYSTEM);

tryagain:

	nvbuf = FUNC4(nvsz);
	if (nvbuf == NULL) {
		err = (FUNC9(hdl, EZFS_NOMEM, FUNC7(errno)));
		goto out;
	}

	zc.zc_nvlist_dst_size = nvsz;
	zc.zc_nvlist_dst = (uintptr_t)nvbuf;

	(void) FUNC8(zc.zc_name, zhp->zfs_name, sizeof (zc.zc_name));

	if (FUNC3(hdl->libzfs_fd, ZFS_IOC_GET_FSACL, &zc) != 0) {
		(void) FUNC6(errbuf, sizeof (errbuf),
		    FUNC1(TEXT_DOMAIN, "cannot get permissions on '%s'"),
		    zc.zc_name);
		switch (errno) {
		case ENOMEM:
			FUNC2(nvbuf);
			nvsz = zc.zc_nvlist_dst_size;
			goto tryagain;

		case ENOTSUP:
			FUNC10(hdl, FUNC1(TEXT_DOMAIN,
			    "pool must be upgraded"));
			err = FUNC9(hdl, EZFS_BADVERSION, errbuf);
			break;
		case EINVAL:
			err = FUNC9(hdl, EZFS_BADTYPE, errbuf);
			break;
		case ENOENT:
			err = FUNC9(hdl, EZFS_NOENT, errbuf);
			break;
		default:
			err = FUNC11(hdl, errno, errbuf);
			break;
		}
	} else {
		/* success */
		int rc = FUNC5(nvbuf, zc.zc_nvlist_dst_size, nvl, 0);
		if (rc) {
			(void) FUNC6(errbuf, sizeof (errbuf), FUNC1(
			    TEXT_DOMAIN, "cannot get permissions on '%s'"),
			    zc.zc_name);
			err = FUNC11(hdl, rc, errbuf);
		}
	}

	FUNC2(nvbuf);
out:
	return (err);
}