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
struct loadedfile {int dummy; } ;
struct TYPE_2__ {char* fname; struct loadedfile* lf; } ;
typedef  int /*<<< orphan*/ * Lst ;
typedef  scalar_t__ Boolean ;

/* Variables and functions */
 char* FUNC0 (char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  PARSE_FATAL ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct loadedfile*) ; 
 int /*<<< orphan*/  STR_ADDSLASH ; 
 int /*<<< orphan*/ * FUNC5 (char*) ; 
 char* FUNC6 (char*) ; 
 TYPE_1__* curFile ; 
 int /*<<< orphan*/ * defIncPath ; 
 int /*<<< orphan*/ * dirSearchPath ; 
 scalar_t__ doing_depend ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  loadedfile_nextbuf ; 
 struct loadedfile* FUNC8 (char*,int) ; 
 int FUNC9 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * parseIncPath ; 
 char* FUNC10 (char*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (char*,char*) ; 
 scalar_t__ FUNC12 (char*,char*,int) ; 
 char* FUNC13 (char*,char) ; 
 int /*<<< orphan*/ * sysIncPath ; 

__attribute__((used)) static void
FUNC14(char *file, Boolean isSystem, Boolean depinc, int silent)
{
    struct loadedfile *lf;
    char          *fullname;	/* full pathname of file */
    char          *newName;
    char          *prefEnd, *incdir;
    int           fd;
    int           i;

    /*
     * Now we know the file's name and its search path, we attempt to
     * find the durn thing. A return of NULL indicates the file don't
     * exist.
     */
    fullname = file[0] == '/' ? FUNC6(file) : NULL;

    if (fullname == NULL && !isSystem) {
	/*
	 * Include files contained in double-quotes are first searched for
	 * relative to the including file's location. We don't want to
	 * cd there, of course, so we just tack on the old file's
	 * leading path components and call Dir_FindFile to see if
	 * we can locate the beast.
	 */

	incdir = FUNC6(curFile->fname);
	prefEnd = FUNC13(incdir, '/');
	if (prefEnd != NULL) {
	    *prefEnd = '\0';
	    /* Now do lexical processing of leading "../" on the filename */
	    for (i = 0; FUNC12(file + i, "../", 3) == 0; i += 3) {
		prefEnd = FUNC13(incdir + 1, '/');
		if (prefEnd == NULL || FUNC11(prefEnd, "/..") == 0)
		    break;
		*prefEnd = '\0';
	    }
	    newName = FUNC10(incdir, file + i, STR_ADDSLASH);
	    fullname = FUNC0(newName, parseIncPath);
	    if (fullname == NULL)
		fullname = FUNC0(newName, dirSearchPath);
	    FUNC7(newName);
	}
	FUNC7(incdir);

	if (fullname == NULL) {
	    /*
    	     * Makefile wasn't found in same directory as included makefile.
	     * Search for it first on the -I search path,
	     * then on the .PATH search path, if not found in a -I directory.
	     * If we have a suffix specific path we should use that.
	     */
	    char *suff;
	    Lst	suffPath = NULL;

	    if ((suff = FUNC13(file, '.'))) {
		suffPath = FUNC5(suff);
		if (suffPath != NULL) {
		    fullname = FUNC0(file, suffPath);
		}
	    }
	    if (fullname == NULL) {
		fullname = FUNC0(file, parseIncPath);
		if (fullname == NULL) {
		    fullname = FUNC0(file, dirSearchPath);
		}
	    }
	}
    }

    /* Looking for a system file or file still not found */
    if (fullname == NULL) {
	/*
	 * Look for it on the system path
	 */
	fullname = FUNC0(file,
		    FUNC1(sysIncPath) ? defIncPath : sysIncPath);
    }

    if (fullname == NULL) {
	if (!silent)
	    FUNC3(PARSE_FATAL, "Could not find %s", file);
	return;
    }

    /* Actually open the file... */
    fd = FUNC9(fullname, O_RDONLY);
    if (fd == -1) {
	if (!silent)
	    FUNC3(PARSE_FATAL, "Cannot open %s", fullname);
	FUNC7(fullname);
	return;
    }

    /* load it */
    lf = FUNC8(fullname, fd);

    FUNC2();
    /* Start reading from this file next */
    FUNC4(fullname, 0, -1, loadedfile_nextbuf, lf);
    curFile->lf = lf;
    if (depinc)
	doing_depend = depinc;		/* only turn it on */
}