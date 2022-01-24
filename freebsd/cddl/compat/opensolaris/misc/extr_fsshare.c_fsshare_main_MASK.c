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
typedef  int /*<<< orphan*/  tmpfile ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int ENAMETOOLONG ; 
 int ENOENT ; 
 int EOPNOTSUPP ; 
 char* FILE_HEADER ; 
 int /*<<< orphan*/  LOCK_EX ; 
 int /*<<< orphan*/  LOCK_UN ; 
 int PATH_MAX ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int,char*) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,char const*,...) ; 
 int FUNC9 (char*) ; 
 int FUNC10 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int FUNC12 (char*,char*,int) ; 
 int FUNC13 (char*,char const*,int) ; 
 char* FUNC14 (char const*) ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 
 char* FUNC16 (int /*<<< orphan*/ *,char const*) ; 

__attribute__((used)) static int
FUNC17(const char *file, const char *mountpoint, const char *shareopts,
    int share)
{
	char tmpfile[PATH_MAX];
	char *line;
	FILE *newfd, *oldfd;
	int fd, error;

	newfd = oldfd = NULL;
	error = 0;

	/*
	 * Create temporary file in the same directory, so we can atomically
	 * rename it.
	 */
	if (FUNC13(tmpfile, file, sizeof(tmpfile)) >= sizeof(tmpfile))
		return (ENAMETOOLONG);
	if (FUNC12(tmpfile, ".XXXXXXXX", sizeof(tmpfile)) >= sizeof(tmpfile))
		return (ENAMETOOLONG);
	fd = FUNC9(tmpfile);
	if (fd == -1)
		return (errno);
	/*
	 * File name is random, so we don't really need file lock now, but it
	 * will be needed after rename(2).
	 */
	error = FUNC6(fd, LOCK_EX);
	FUNC0(error == 0 || (error == -1 && errno == EOPNOTSUPP));
	newfd = FUNC2(fd, "r+");
	FUNC0(newfd != NULL);
	/* Open old exports file. */
	oldfd = FUNC7(file, "r");
	if (oldfd == NULL) {
		if (share) {
			if (errno != ENOENT) {
				error = errno;
				goto out;
			}
		} else {
			/* If there is no exports file, ignore the error. */
			if (errno == ENOENT)
				errno = 0;
			error = errno;
			goto out;
		}
	} else {
		error = FUNC6(FUNC5(oldfd), LOCK_EX);
		FUNC0(error == 0 || (error == -1 && errno == EOPNOTSUPP));
		error = 0;
	}

	/* Place big, fat warning at the begining of the file. */
	FUNC8(newfd, "%s", FILE_HEADER);
	while (oldfd != NULL && (line = FUNC16(oldfd, mountpoint)) != NULL)
		FUNC8(newfd, "%s\n", line);
	if (oldfd != NULL && FUNC3(oldfd) != 0) {
		error = FUNC3(oldfd);
		goto out;
	}
	if (FUNC3(newfd) != 0) {
		error = FUNC3(newfd);
		goto out;
	}
	if (share) {
		FUNC8(newfd, "%s\t%s\n", mountpoint,
		    FUNC14(shareopts));
	}

out:
	if (error != 0)
		FUNC15(tmpfile);
	else {
		if (FUNC10(tmpfile, file) == -1) {
			error = errno;
			FUNC15(tmpfile);
		} else {
			FUNC4(newfd);
			/*
			 * Send SIGHUP to mountd, but unlock exports file later.
			 */
			FUNC11();
		}
	}
	if (oldfd != NULL) {
		FUNC6(FUNC5(oldfd), LOCK_UN);
		FUNC1(oldfd);
	}
	if (newfd != NULL) {
		FUNC6(FUNC5(newfd), LOCK_UN);
		FUNC1(newfd);
	}
	return (error);
}