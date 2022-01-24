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
struct TYPE_5__ {int /*<<< orphan*/  zfs_name; int /*<<< orphan*/ * zfs_hdl; } ;
typedef  TYPE_1__ zfs_handle_t ;
typedef  scalar_t__ uint64_t ;
struct TYPE_6__ {scalar_t__ dryrun; int /*<<< orphan*/  parsable; scalar_t__ verbose; scalar_t__ compress; scalar_t__ embed_data; scalar_t__ largeblock; } ;
typedef  TYPE_2__ sendflags_t ;
typedef  char* longlong_t ;
typedef  int /*<<< orphan*/  libzfs_handle_t ;
typedef  int /*<<< orphan*/  errbuf ;
typedef  enum lzc_send_flags { ____Placeholder_lzc_send_flags } lzc_send_flags ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
#define  EBUSY 142 
#define  EDQUOT 141 
#define  EFAULT 140 
#define  EFBIG 139 
#define  EIO 138 
#define  ENOENT 137 
#define  ENOLINK 136 
#define  ENOSPC 135 
#define  ENOSTR 134 
#define  ENXIO 133 
#define  EPIPE 132 
#define  ERANGE 131 
#define  EROFS 130 
#define  ESRCH 129 
#define  EXDEV 128 
 int /*<<< orphan*/  EZFS_BADBACKUP ; 
 int /*<<< orphan*/  EZFS_BUSY ; 
 int /*<<< orphan*/  EZFS_CROSSTARGET ; 
 int /*<<< orphan*/  EZFS_NOENT ; 
 int LZC_SEND_FLAG_COMPRESS ; 
 int LZC_SEND_FLAG_EMBED_DATA ; 
 int LZC_SEND_FLAG_LARGE_BLOCK ; 
 int /*<<< orphan*/  TEXT_DOMAIN ; 
 char* FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,char const*,int,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,char const*,int,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * stderr ; 
 int /*<<< orphan*/ * stdout ; 
 char* FUNC7 (int) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,char*,int) ; 
 int FUNC11 (int /*<<< orphan*/ *,int,char*) ; 

int
FUNC12(zfs_handle_t *zhp, const char *from, int fd, sendflags_t flags)
{
	int err = 0;
	libzfs_handle_t *hdl = zhp->zfs_hdl;
	enum lzc_send_flags lzc_flags = 0;
	FILE *fout = (flags.verbose && flags.dryrun) ? stdout : stderr;
	char errbuf[1024];

	if (flags.largeblock)
		lzc_flags |= LZC_SEND_FLAG_LARGE_BLOCK;
	if (flags.embed_data)
		lzc_flags |= LZC_SEND_FLAG_EMBED_DATA;
	if (flags.compress)
		lzc_flags |= LZC_SEND_FLAG_COMPRESS;

	if (flags.verbose) {
		uint64_t size = 0;
		err = FUNC4(zhp->zfs_name, from, lzc_flags, &size);
		if (err == 0) {
			FUNC5(fout, zhp->zfs_name, from, size,
			    flags.parsable);
			if (flags.parsable) {
				(void) FUNC1(fout, "size\t%llu\n",
				    (longlong_t)size);
			} else {
				char buf[16];
				FUNC10(size, buf, sizeof (buf));
				(void) FUNC1(fout, FUNC0(TEXT_DOMAIN,
				    "total estimated size is %s\n"), buf);
			}
		} else {
			(void) FUNC1(stderr, "Cannot estimate send size: "
			    "%s\n", FUNC7(errno));
		}
	}

	if (flags.dryrun)
		return (err);

	(void) FUNC6(errbuf, sizeof (errbuf), FUNC0(TEXT_DOMAIN,
	    "warning: cannot send '%s'"), zhp->zfs_name);

	err = FUNC3(zhp->zfs_name, from, fd, lzc_flags);
	if (err != 0) {
		switch (errno) {
		case EXDEV:
			FUNC9(hdl, FUNC0(TEXT_DOMAIN,
			    "not an earlier snapshot from the same fs"));
			return (FUNC8(hdl, EZFS_CROSSTARGET, errbuf));

		case ENOENT:
		case ESRCH:
			if (FUNC2(zhp->zfs_name)) {
				FUNC9(hdl, FUNC0(TEXT_DOMAIN,
				    "incremental source (%s) does not exist"),
				    from);
			}
			return (FUNC8(hdl, EZFS_NOENT, errbuf));

		case EBUSY:
			FUNC9(hdl, FUNC0(TEXT_DOMAIN,
			    "target is busy; if a filesystem, "
			    "it must not be mounted"));
			return (FUNC8(hdl, EZFS_BUSY, errbuf));

		case EDQUOT:
		case EFBIG:
		case EIO:
		case ENOLINK:
		case ENOSPC:
#ifdef illumos
		case ENOSTR:
#endif
		case ENXIO:
		case EPIPE:
		case ERANGE:
		case EFAULT:
		case EROFS:
			FUNC9(hdl, FUNC7(errno));
			return (FUNC8(hdl, EZFS_BADBACKUP, errbuf));

		default:
			return (FUNC11(hdl, errno, errbuf));
		}
	}
	return (err != 0);
}