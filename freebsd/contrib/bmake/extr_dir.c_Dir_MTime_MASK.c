#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct stat {int st_mtime; } ;
struct TYPE_6__ {int type; int mtime; char* path; char* name; int flags; char* fname; int lineno; int /*<<< orphan*/  iParents; } ;
typedef  TYPE_1__ GNode ;
typedef  scalar_t__ Boolean ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  CST_UPDATE ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DIR ; 
 char* FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int FROM_DEPEND ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int OP_ARCHV ; 
 int OP_MEMBER ; 
 int OP_NOPATH ; 
 int OP_PHONY ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 void* FUNC7 (char*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,char*,struct stat*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  debug_file ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 char* makeDependfile ; 
 int /*<<< orphan*/  mtimes ; 
 char* progname ; 
 int /*<<< orphan*/  stdout ; 
 char* FUNC11 (char*,char) ; 

int
FUNC12(GNode *gn, Boolean recheck)
{
    char          *fullName;  /* the full pathname of name */
    struct stat	  stb;	      /* buffer for finding the mod time */

    if (gn->type & OP_ARCHV) {
	return FUNC0(gn);
    } else if (gn->type & OP_PHONY) {
	gn->mtime = 0;
	return 0;
    } else if (gn->path == NULL) {
	if (gn->type & OP_NOPATH)
	    fullName = NULL;
	else {
	    fullName = FUNC3(gn->name, FUNC6(gn));
	    if (fullName == NULL && gn->flags & FROM_DEPEND &&
		!FUNC5(gn->iParents)) {
		char *cp;

		cp = FUNC11(gn->name, '/');
		if (cp) {
		    /*
		     * This is an implied source, and it may have moved,
		     * see if we can find it via the current .PATH
		     */
		    cp++;
			
		    fullName = FUNC3(cp, FUNC6(gn));
		    if (fullName) {
			/*
			 * Put the found file in gn->path
			 * so that we give that to the compiler.
			 */
			gn->path = FUNC7(fullName);
			if (!FUNC4(".STALE", gn->fname))
			    FUNC9(stdout,
				"%s: %s, %d: ignoring stale %s for %s, "
				"found %s\n", progname, gn->fname, gn->lineno,
				makeDependfile, gn->name, fullName);
		    }
		}
	    }
	    if (FUNC2(DIR))
		FUNC9(debug_file, "Found '%s' as '%s'\n",
			gn->name, fullName ? fullName : "(not found)" );
	}
    } else {
	fullName = gn->path;
    }

    if (fullName == NULL) {
	fullName = FUNC7(gn->name);
    }

    if (FUNC8(&mtimes, fullName, &stb, recheck ? CST_UPDATE : 0) < 0) {
	if (gn->type & OP_MEMBER) {
	    if (fullName != gn->path)
		FUNC10(fullName);
	    return FUNC1(gn);
	} else {
	    stb.st_mtime = 0;
	}
    }

    if (fullName && gn->path == NULL) {
	gn->path = fullName;
    }

    gn->mtime = stb.st_mtime;
    return (gn->mtime);
}