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
typedef  int /*<<< orphan*/  wbuf ;
struct stat {int /*<<< orphan*/  st_mode; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ELOOP ; 
 int /*<<< orphan*/  ENAMETOOLONG ; 
 int /*<<< orphan*/  ENOENT ; 
 int /*<<< orphan*/  ENOTDIR ; 
 int MAXPATHLEN ; 
 int /*<<< orphan*/  MAXSYMLINKS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/ * FUNC3 (char*,int) ; 
 int FUNC4 (char*,struct stat*) ; 
 char* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*,size_t) ; 
 size_t FUNC7 (char*,char*,int) ; 
 size_t FUNC8 (char const*) ; 

char *
FUNC9(const char * __restrict path, char * __restrict resolved)
{
	struct stat sb;
	int idx = 0, nlnk = 0;
	const char *q;
	char *p, wbuf[2][MAXPATHLEN], *fres;
	size_t len;
	ssize_t n;

	/* POSIX sez we must test for this */
	if (path == NULL) {
		errno = EINVAL;
		return NULL;
	}

	if (resolved == NULL) {
		fres = resolved = FUNC5(MAXPATHLEN);
		if (resolved == NULL)
			return NULL;
	} else
		fres = NULL;


	/*
	 * Build real path one by one with paying an attention to .,
	 * .. and symbolic link.
	 */

	/*
	 * `p' is where we'll put a new component with prepending
	 * a delimiter.
	 */
	p = resolved;

	if (*path == '\0') {
		*p = '\0';
		errno = ENOENT;
		goto out;
	}

	/* If relative path, start from current working directory. */
	if (*path != '/') {
		/* check for resolved pointer to appease coverity */
		if (resolved && FUNC3(resolved, MAXPATHLEN) == NULL) {
			p[0] = '.';
			p[1] = '\0';
			goto out;
		}
		len = FUNC8(resolved);
		if (len > 1)
			p += len;
	}

loop:
	/* Skip any slash. */
	while (*path == '/')
		path++;

	if (*path == '\0') {
		if (p == resolved)
			*p++ = '/';
		*p = '\0';
		return resolved;
	}

	/* Find the end of this component. */
	q = path;
	do
		q++;
	while (*q != '/' && *q != '\0');

	/* Test . or .. */
	if (path[0] == '.') {
		if (q - path == 1) {
			path = q;
			goto loop;
		}
		if (path[1] == '.' && q - path == 2) {
			/* Trim the last component. */
			if (p != resolved)
				while (*--p != '/')
					continue;
			path = q;
			goto loop;
		}
	}

	/* Append this component. */
	if (p - resolved + 1 + q - path + 1 > MAXPATHLEN) {
		errno = ENAMETOOLONG;
		if (p == resolved)
			*p++ = '/';
		*p = '\0';
		goto out;
	}
	p[0] = '/';
	FUNC6(&p[1], path,
	    /* LINTED We know q > path. */
	    q - path);
	p[1 + q - path] = '\0';

	/*
	 * If this component is a symlink, toss it and prepend link
	 * target to unresolved path.
	 */
	if (FUNC4(resolved, &sb) == -1)
		goto out;

	if (FUNC1(sb.st_mode)) {
		if (nlnk++ >= MAXSYMLINKS) {
			errno = ELOOP;
			goto out;
		}
		n = FUNC7(resolved, wbuf[idx], sizeof(wbuf[0]) - 1);
		if (n < 0)
			goto out;
		if (n == 0) {
			errno = ENOENT;
			goto out;
		}

		/* Append unresolved path to link target and switch to it. */
		if (n + (len = FUNC8(q)) + 1 > sizeof(wbuf[0])) {
			errno = ENAMETOOLONG;
			goto out;
		}
		FUNC6(&wbuf[idx][n], q, len + 1);
		path = wbuf[idx];
		idx ^= 1;

		/* If absolute symlink, start from root. */
		if (*path == '/')
			p = resolved;
		goto loop;
	}
	if (*q == '/' && !FUNC0(sb.st_mode)) {
		errno = ENOTDIR;
		goto out;
	}

	/* Advance both resolved and unresolved path. */
	p += 1 + q - path;
	path = q;
	goto loop;
out:
	FUNC2(fres);
	return NULL;
}