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
struct statfs {char* f_mntonname; char const* f_mntfromname; int /*<<< orphan*/  f_fstypename; } ;
struct stat64 {int dummy; } ;

/* Variables and functions */
 int MAXPATHLEN ; 
 int /*<<< orphan*/  MNTTYPE_ZFS ; 
 int /*<<< orphan*/  FUNC0 (char const*,char*) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC2 (char*,struct stat64*) ; 
 int FUNC3 (char*,struct statfs*) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*) ; 
 char* FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (char*) ; 
 scalar_t__ FUNC8 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC9 () ; 

__attribute__((used)) static int
FUNC10(const char *inpath, char *dataset, char *relpath,
    struct stat64 *statbuf)
{
	struct statfs sfs;
	const char *rel;
	char fullpath[MAXPATHLEN];

	FUNC0(inpath, fullpath);

	if (fullpath[0] != '/') {
		(void) FUNC1(stderr, "invalid object '%s': must be full "
		    "path\n", fullpath);
		FUNC9();
		return (-1);
	}

	if (FUNC7(fullpath) >= MAXPATHLEN) {
		(void) FUNC1(stderr, "invalid object; pathname too long\n");
		return (-1);
	}

	if (FUNC2(fullpath, statbuf) != 0) {
		(void) FUNC1(stderr, "cannot open '%s': %s\n",
		    fullpath, FUNC6(errno));
		return (-1);
	}

	if (FUNC3(fullpath, &sfs) == -1) {
		(void) FUNC1(stderr, "cannot find mountpoint for '%s': %s\n",
		    fullpath, FUNC6(errno));
		return (-1);
	}

	if (FUNC4(sfs.f_fstypename, MNTTYPE_ZFS) != 0) {
		(void) FUNC1(stderr, "invalid path '%s': not a ZFS "
		    "filesystem\n", fullpath);
		return (-1);
	}

	if (FUNC8(fullpath, sfs.f_mntonname, FUNC7(sfs.f_mntonname)) != 0) {
		(void) FUNC1(stderr, "invalid path '%s': mountpoint "
		    "doesn't match path\n", fullpath);
		return (-1);
	}

	(void) FUNC5(dataset, sfs.f_mntfromname);

	rel = fullpath + FUNC7(sfs.f_mntonname);
	if (rel[0] == '/')
		rel++;
	(void) FUNC5(relpath, rel);

	return (0);
}