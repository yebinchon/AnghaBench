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
typedef  int /*<<< orphan*/  _TFILE_BASE ;

/* Variables and functions */
#define  APPND 132 
#define  ARCHIVE 131 
#define  COPY 130 
#define  EXTRACT 129 
 int /*<<< orphan*/  LC_ALL ; 
#define  LIST 128 
 int O_CLOEXEC ; 
 int O_RDONLY ; 
 char* _PATH_TMP ; 
 int act ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ cwdfd ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 int /*<<< orphan*/  errno ; 
 int exit_val ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 () ; 
 char* FUNC6 (char*) ; 
 int /*<<< orphan*/ * gzip_program ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  listf ; 
 int /*<<< orphan*/ * FUNC8 (size_t) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char const*,size_t) ; 
 scalar_t__ FUNC10 (char*,int) ; 
 int /*<<< orphan*/  FUNC11 (int,char**) ; 
 int /*<<< orphan*/  FUNC12 (int,char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  stderr ; 
 size_t FUNC14 (char const*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * tempbase ; 
 int /*<<< orphan*/ * tempfile ; 
 scalar_t__ FUNC16 () ; 

int
FUNC17(int argc, char *argv[])
{
	const char *tmpdir;
	size_t tdlen;

	(void) FUNC13(LC_ALL, "");
	listf = stderr;
	/*
	 * Keep a reference to cwd, so we can always come back home.
	 */
	cwdfd = FUNC10(".", O_RDONLY | O_CLOEXEC);
	if (cwdfd < 0) {
		FUNC15(0, errno, "Can't open current working directory.");
		return(exit_val);
	}

	/*
	 * Where should we put temporary files?
	 */
	if ((tmpdir = FUNC6("TMPDIR")) == NULL || *tmpdir == '\0')
		tmpdir = _PATH_TMP;
	tdlen = FUNC14(tmpdir);
	while (tdlen > 0 && tmpdir[tdlen - 1] == '/')
		tdlen--;
	tempfile = FUNC8(tdlen + 1 + sizeof(_TFILE_BASE));
	if (tempfile == NULL) {
		FUNC12(1, "Cannot allocate memory for temp file name.");
		return(exit_val);
	}
	if (tdlen)
		FUNC9(tempfile, tmpdir, tdlen);
	tempbase = tempfile + tdlen;
	*tempbase++ = '/';

	/*
	 * parse options, determine operational mode, general init
	 */
	FUNC11(argc, argv);
	if ((FUNC5() < 0) || (FUNC16() < 0))
		return(exit_val);

	/*
	 * select a primary operation mode
	 */
	switch (act) {
	case EXTRACT:
		FUNC4();
		break;
	case ARCHIVE:
		FUNC1();
		break;
	case APPND:
		if (gzip_program != NULL)
			FUNC3(1, "can not gzip while appending");
		FUNC0();
		break;
	case COPY:
		FUNC2();
		break;
	default:
	case LIST:
		FUNC7();
		break;
	}
	return(exit_val);
}