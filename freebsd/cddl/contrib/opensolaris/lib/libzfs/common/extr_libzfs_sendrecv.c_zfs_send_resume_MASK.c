#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  zfs_name; } ;
typedef  TYPE_1__ zfs_handle_t ;
typedef  scalar_t__ uint64_t ;
struct TYPE_9__ {scalar_t__ progress; int /*<<< orphan*/  progressastitle; int /*<<< orphan*/  parsable; scalar_t__ dryrun; scalar_t__ verbose; scalar_t__ compress; scalar_t__ embed_data; scalar_t__ largeblock; } ;
typedef  TYPE_2__ sendflags_t ;
typedef  int /*<<< orphan*/  pthread_t ;
struct TYPE_10__ {int pa_fd; int /*<<< orphan*/  pa_astitle; scalar_t__ pa_size; int /*<<< orphan*/  pa_parsable; TYPE_1__* pa_zhp; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_3__ progress_arg_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int /*<<< orphan*/  longlong_t ;
typedef  int /*<<< orphan*/  libzfs_handle_t ;
typedef  int /*<<< orphan*/  int64_t ;
typedef  int /*<<< orphan*/  errbuf ;
typedef  enum lzc_send_flags { ____Placeholder_lzc_send_flags } lzc_send_flags ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  B_TRUE ; 
#define  EDQUOT 140 
#define  EFAULT 139 
#define  EFBIG 138 
#define  EIO 137 
#define  ENOENT 136 
#define  ENOLINK 135 
#define  ENOSPC 134 
#define  ENOSTR 133 
#define  ENXIO 132 
#define  EPIPE 131 
#define  ERANGE 130 
#define  EROFS 129 
#define  EXDEV 128 
 int /*<<< orphan*/  EZFS_BADBACKUP ; 
 int /*<<< orphan*/  EZFS_BADPATH ; 
 int /*<<< orphan*/  EZFS_FAULT ; 
 int LZC_SEND_FLAG_COMPRESS ; 
 int LZC_SEND_FLAG_EMBED_DATA ; 
 int LZC_SEND_FLAG_LARGE_BLOCK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TEXT_DOMAIN ; 
 int ZFS_MAX_DATASET_NAME_LEN ; 
 int /*<<< orphan*/  ZFS_TYPE_DATASET ; 
 char* FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char*,scalar_t__,int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (int /*<<< orphan*/ ,char*,int,int,scalar_t__,scalar_t__) ; 
 int FUNC5 (int /*<<< orphan*/ ,char*,int,scalar_t__*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,char*,char**) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,char*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  send_progress_thread ; 
 int /*<<< orphan*/  FUNC14 (char*,int,char*,...) ; 
 int /*<<< orphan*/ * stderr ; 
 int /*<<< orphan*/ * stdout ; 
 char* FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,char*,...) ; 
 TYPE_1__* FUNC20 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC21 (int /*<<< orphan*/ *,char const*) ; 
 int FUNC22 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 

int
FUNC23(libzfs_handle_t *hdl, sendflags_t *flags, int outfd,
    const char *resume_token)
{
	char errbuf[1024];
	char *toname;
	char *fromname = NULL;
	uint64_t resumeobj, resumeoff, toguid, fromguid, bytes;
	zfs_handle_t *zhp;
	int error = 0;
	char name[ZFS_MAX_DATASET_NAME_LEN];
	enum lzc_send_flags lzc_flags = 0;
	uint64_t size = 0;
	FILE *fout = (flags->verbose && flags->dryrun) ? stdout : stderr;

	(void) FUNC14(errbuf, sizeof (errbuf), FUNC1(TEXT_DOMAIN,
	    "cannot resume send"));

	nvlist_t *resume_nvl =
	    FUNC21(hdl, resume_token);
	if (resume_nvl == NULL) {
		/*
		 * zfs_error_aux has already been set by
		 * zfs_send_resume_token_to_nvlist
		 */
		return (FUNC18(hdl, EZFS_FAULT, errbuf));
	}
	if (flags->verbose) {
		(void) FUNC2(fout, FUNC1(TEXT_DOMAIN,
		    "resume token contents:\n"));
		FUNC9(fout, resume_nvl);
	}

	if (FUNC7(resume_nvl, "toname", &toname) != 0 ||
	    FUNC8(resume_nvl, "object", &resumeobj) != 0 ||
	    FUNC8(resume_nvl, "offset", &resumeoff) != 0 ||
	    FUNC8(resume_nvl, "bytes", &bytes) != 0 ||
	    FUNC8(resume_nvl, "toguid", &toguid) != 0) {
		FUNC19(hdl, FUNC1(TEXT_DOMAIN,
		    "resume token is corrupt"));
		return (FUNC18(hdl, EZFS_FAULT, errbuf));
	}
	fromguid = 0;
	(void) FUNC8(resume_nvl, "fromguid", &fromguid);

	if (flags->largeblock || FUNC6(resume_nvl, "largeblockok"))
		lzc_flags |= LZC_SEND_FLAG_LARGE_BLOCK;
	if (flags->embed_data || FUNC6(resume_nvl, "embedok"))
		lzc_flags |= LZC_SEND_FLAG_EMBED_DATA;
	if (flags->compress || FUNC6(resume_nvl, "compressok"))
		lzc_flags |= LZC_SEND_FLAG_COMPRESS;

	if (FUNC3(hdl, toname, toguid, B_FALSE, name) != 0) {
		if (FUNC17(hdl, toname, ZFS_TYPE_DATASET)) {
			FUNC19(hdl, FUNC1(TEXT_DOMAIN,
			    "'%s' is no longer the same snapshot used in "
			    "the initial send"), toname);
		} else {
			FUNC19(hdl, FUNC1(TEXT_DOMAIN,
			    "'%s' used in the initial send no longer exists"),
			    toname);
		}
		return (FUNC18(hdl, EZFS_BADPATH, errbuf));
	}
	zhp = FUNC20(hdl, name, ZFS_TYPE_DATASET);
	if (zhp == NULL) {
		FUNC19(hdl, FUNC1(TEXT_DOMAIN,
		    "unable to access '%s'"), name);
		return (FUNC18(hdl, EZFS_BADPATH, errbuf));
	}

	if (fromguid != 0) {
		if (FUNC3(hdl, toname, fromguid, B_TRUE, name) != 0) {
			FUNC19(hdl, FUNC1(TEXT_DOMAIN,
			    "incremental source %#llx no longer exists"),
			    (longlong_t)fromguid);
			return (FUNC18(hdl, EZFS_BADPATH, errbuf));
		}
		fromname = name;
	}

	if (flags->progress || flags->verbose) {
		error = FUNC5(zhp->zfs_name, fromname,
		    lzc_flags, &size);
		if (error == 0)
			size = FUNC0(0, (int64_t)(size - bytes));
	}
	if (flags->verbose) {
		FUNC13(fout, zhp->zfs_name, fromname,
		    size, flags->parsable);
	}

	if (!flags->dryrun) {
		progress_arg_t pa = { 0 };
		pthread_t tid;
		/*
		 * If progress reporting is requested, spawn a new thread to
		 * poll ZFS_IOC_SEND_PROGRESS at a regular interval.
		 */
		if (flags->progress) {
			pa.pa_zhp = zhp;
			pa.pa_fd = outfd;
			pa.pa_parsable = flags->parsable;
			pa.pa_size = size;
			pa.pa_astitle = flags->progressastitle;

			error = FUNC11(&tid, NULL,
			    send_progress_thread, &pa);
			if (error != 0) {
				FUNC16(zhp);
				return (error);
			}
		}

		error = FUNC4(zhp->zfs_name, fromname, outfd,
		    lzc_flags, resumeobj, resumeoff);

		if (flags->progress) {
			(void) FUNC10(tid);
			(void) FUNC12(tid, NULL);
		}

		char errbuf[1024];
		(void) FUNC14(errbuf, sizeof (errbuf), FUNC1(TEXT_DOMAIN,
		    "warning: cannot send '%s'"), zhp->zfs_name);

		FUNC16(zhp);

		switch (error) {
		case 0:
			return (0);
		case EXDEV:
		case ENOENT:
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
			FUNC19(hdl, FUNC15(errno));
			return (FUNC18(hdl, EZFS_BADBACKUP, errbuf));

		default:
			return (FUNC22(hdl, errno, errbuf));
		}
	}


	FUNC16(zhp);

	return (error);
}