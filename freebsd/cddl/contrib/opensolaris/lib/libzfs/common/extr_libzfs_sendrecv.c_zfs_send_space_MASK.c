#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/ * zfs_hdl; } ;
typedef  TYPE_1__ zfs_handle_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  libzfs_handle_t ;
typedef  int /*<<< orphan*/  errbuf ;
typedef  enum lzc_send_flags { ____Placeholder_lzc_send_flags } lzc_send_flags ;

/* Variables and functions */
#define  EDQUOT 140 
#define  EFAULT 139 
#define  EFBIG 138 
#define  EINVAL 137 
#define  EIO 136 
#define  ENOENT 135 
#define  ENOLINK 134 
#define  ENOSPC 133 
#define  ENXIO 132 
#define  EPIPE 131 
#define  ERANGE 130 
#define  EROFS 129 
#define  EXDEV 128 
 int /*<<< orphan*/  EZFS_BADBACKUP ; 
 int /*<<< orphan*/  EZFS_CROSSTARGET ; 
 int /*<<< orphan*/  EZFS_NOENT ; 
 int /*<<< orphan*/  TEXT_DOMAIN ; 
 int /*<<< orphan*/  ZFS_TYPE_SNAPSHOT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (char const*,char const*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,char const*) ; 
 char* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,...) ; 
 int FUNC8 (int /*<<< orphan*/ *,int,char*) ; 

__attribute__((used)) static int
FUNC9(zfs_handle_t *zhp, const char *snapname, const char *from,
    enum lzc_send_flags flags, uint64_t *spacep)
{
	libzfs_handle_t *hdl = zhp->zfs_hdl;
	int error;

	FUNC0(snapname != NULL);
	error = FUNC2(snapname, from, flags, spacep);

	if (error != 0) {
		char errbuf[1024];
		(void) FUNC3(errbuf, sizeof (errbuf), FUNC1(TEXT_DOMAIN,
		    "warning: cannot estimate space for '%s'"), snapname);

		switch (error) {
		case EXDEV:
			FUNC7(hdl, FUNC1(TEXT_DOMAIN,
			    "not an earlier snapshot from the same fs"));
			return (FUNC6(hdl, EZFS_CROSSTARGET, errbuf));

		case ENOENT:
			if (FUNC5(hdl, snapname,
			    ZFS_TYPE_SNAPSHOT)) {
				FUNC7(hdl, FUNC1(TEXT_DOMAIN,
				    "incremental source (%s) does not exist"),
				    snapname);
			}
			return (FUNC6(hdl, EZFS_NOENT, errbuf));

		case EDQUOT:
		case EFBIG:
		case EIO:
		case ENOLINK:
		case ENOSPC:
		case ENXIO:
		case EPIPE:
		case ERANGE:
		case EFAULT:
		case EROFS:
		case EINVAL:
			FUNC7(hdl, FUNC4(error));
			return (FUNC6(hdl, EZFS_BADBACKUP, errbuf));

		default:
			return (FUNC8(hdl, error, errbuf));
		}
	}

	return (0);
}