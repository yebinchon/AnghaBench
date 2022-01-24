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
struct timespec {int dummy; } ;
struct stat {int st_mode; scalar_t__ st_uid; scalar_t__ st_gid; scalar_t__ st_flags; struct timespec st_mtim; struct timespec st_atim; } ;
struct TYPE_2__ {int /*<<< orphan*/  p_path; } ;

/* Variables and functions */
 int /*<<< orphan*/  AT_FDCWD ; 
 int /*<<< orphan*/  AT_SYMLINK_NOFOLLOW ; 
 scalar_t__ EPERM ; 
 int S_IRWXG ; 
 int S_IRWXO ; 
 int S_IRWXU ; 
 int S_ISGID ; 
 scalar_t__ FUNC0 (int) ; 
 int S_ISUID ; 
 int S_ISVTX ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC4 (int,scalar_t__) ; 
 scalar_t__ FUNC5 (int,int) ; 
 scalar_t__ FUNC6 (int,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC7 (int,struct stat*) ; 
 scalar_t__ FUNC8 (int,struct timespec*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,struct stat*) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,struct stat*) ; 
 TYPE_1__ to ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct timespec*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (char*,int /*<<< orphan*/ ) ; 

int
FUNC16(struct stat *fs, int fd)
{
	static struct timespec tspec[2];
	struct stat ts;
	int rval, gotstat, islink, fdval;

	rval = 0;
	fdval = fd != -1;
	islink = !fdval && FUNC0(fs->st_mode);
	fs->st_mode &= S_ISUID | S_ISGID | S_ISVTX |
	    S_IRWXU | S_IRWXG | S_IRWXO;

	tspec[0] = fs->st_atim;
	tspec[1] = fs->st_mtim;
	if (fdval ? FUNC8(fd, tspec) : FUNC14(AT_FDCWD, to.p_path, tspec,
	    islink ? AT_SYMLINK_NOFOLLOW : 0)) {
		FUNC15("utimensat: %s", to.p_path);
		rval = 1;
	}
	if (fdval ? FUNC7(fd, &ts) :
	    (islink ? FUNC12(to.p_path, &ts) : FUNC13(to.p_path, &ts)))
		gotstat = 0;
	else {
		gotstat = 1;
		ts.st_mode &= S_ISUID | S_ISGID | S_ISVTX |
		    S_IRWXU | S_IRWXG | S_IRWXO;
	}
	/*
	 * Changing the ownership probably won't succeed, unless we're root
	 * or POSIX_CHOWN_RESTRICTED is not set.  Set uid/gid before setting
	 * the mode; current BSD behavior is to remove all setuid bits on
	 * chown.  If chown fails, lose setuid/setgid bits.
	 */
	if (!gotstat || fs->st_uid != ts.st_uid || fs->st_gid != ts.st_gid)
		if (fdval ? FUNC6(fd, fs->st_uid, fs->st_gid) :
		    (islink ? FUNC11(to.p_path, fs->st_uid, fs->st_gid) :
		    FUNC3(to.p_path, fs->st_uid, fs->st_gid))) {
			if (errno != EPERM) {
				FUNC15("chown: %s", to.p_path);
				rval = 1;
			}
			fs->st_mode &= ~(S_ISUID | S_ISGID);
		}

	if (!gotstat || fs->st_mode != ts.st_mode)
		if (fdval ? FUNC5(fd, fs->st_mode) :
		    (islink ? FUNC10(to.p_path, fs->st_mode) :
		    FUNC2(to.p_path, fs->st_mode))) {
			FUNC15("chmod: %s", to.p_path);
			rval = 1;
		}

	if (!gotstat || fs->st_flags != ts.st_flags)
		if (fdval ?
		    FUNC4(fd, fs->st_flags) :
		    (islink ? FUNC9(to.p_path, fs->st_flags) :
		    FUNC1(to.p_path, fs->st_flags))) {
			FUNC15("chflags: %s", to.p_path);
			rval = 1;
		}

	return (rval);
}