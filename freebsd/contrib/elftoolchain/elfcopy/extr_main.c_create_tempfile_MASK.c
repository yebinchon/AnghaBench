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

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 char const* _TEMPFILE ; 
 int /*<<< orphan*/  _TEMPFILEPATH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC1 (int,int) ; 
 char* FUNC2 (char*) ; 
 char* FUNC3 (size_t) ; 
 int FUNC4 (char*) ; 
 char* FUNC5 (int /*<<< orphan*/ ) ; 
 size_t FUNC6 (char const*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char const*,size_t) ; 

void
FUNC8(char **fn, int *fd)
{
	const char	*tmpdir;
	char		*cp, *tmpf;
	size_t		 tlen, plen;

#define	_TEMPFILE "ecp.XXXXXXXX"
#define	_TEMPFILEPATH "/tmp/ecp.XXXXXXXX"

	if (fn == NULL || fd == NULL)
		return;
	/* Repect TMPDIR environment variable. */
	tmpdir = FUNC2("TMPDIR");
	if (tmpdir != NULL && *tmpdir != '\0') {
		tlen = FUNC6(tmpdir);
		plen = FUNC6(_TEMPFILE);
		tmpf = FUNC3(tlen + plen + 2);
		if (tmpf == NULL)
			FUNC0(EXIT_FAILURE, "malloc failed");
		FUNC7(tmpf, tmpdir, tlen);
		cp = &tmpf[tlen - 1];
		if (*cp++ != '/')
			*cp++ = '/';
		FUNC7(cp, _TEMPFILE, plen);
		cp[plen] = '\0';
	} else {
		tmpf = FUNC5(_TEMPFILEPATH);
		if (tmpf == NULL)
			FUNC0(EXIT_FAILURE, "strdup failed");
	}
	if ((*fd = FUNC4(tmpf)) == -1)
		FUNC0(EXIT_FAILURE, "mkstemp %s failed", tmpf);
	if (FUNC1(*fd, 0644) == -1)
		FUNC0(EXIT_FAILURE, "fchmod %s failed", tmpf);
	*fn = tmpf;

#undef _TEMPFILE
#undef _TEMPFILEPATH
}