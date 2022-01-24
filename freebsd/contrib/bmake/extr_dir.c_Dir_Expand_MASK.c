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
typedef  int /*<<< orphan*/  Lst ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DIR ; 
 int /*<<< orphan*/  FUNC1 (char const*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DirPrintWord ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 char* FUNC5 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (char const*) ; 
 int /*<<< orphan*/  debug_file ; 
 int /*<<< orphan*/  dot ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,...) ; 
 char* FUNC11 (char const*,char) ; 
 int FUNC12 (char*) ; 

void
FUNC13(const char *word, Lst path, Lst expansions)
{
    const char    	  *cp;

    if (FUNC0(DIR)) {
	FUNC10(debug_file, "Expanding \"%s\"... ", word);
    }

    cp = FUNC11(word, '{');
    if (cp) {
	FUNC1(word, cp, path, expansions);
    } else {
	cp = FUNC11(word, '/');
	if (cp) {
	    /*
	     * The thing has a directory component -- find the first wildcard
	     * in the string.
	     */
	    for (cp = word; *cp; cp++) {
		if (*cp == '?' || *cp == '[' || *cp == '*' || *cp == '{') {
		    break;
		}
	    }
	    if (*cp == '{') {
		/*
		 * This one will be fun.
		 */
		FUNC1(word, cp, path, expansions);
		return;
	    } else if (*cp != '\0') {
		/*
		 * Back up to the start of the component
		 */
		char  *dirpath;

		while (cp > word && *cp != '/') {
		    cp--;
		}
		if (cp != word) {
		    char sc;
		    /*
		     * If the glob isn't in the first component, try and find
		     * all the components up to the one with a wildcard.
		     */
		    sc = cp[1];
		    ((char *)FUNC9(cp))[1] = '\0';
		    dirpath = FUNC5(word, path);
		    ((char *)FUNC9(cp))[1] = sc;
		    /*
		     * dirpath is null if can't find the leading component
		     * XXX: Dir_FindFile won't find internal components.
		     * i.e. if the path contains ../Etc/Object and we're
		     * looking for Etc, it won't be found. Ah well.
		     * Probably not important.
		     */
		    if (dirpath != NULL) {
			char *dp = &dirpath[FUNC12(dirpath) - 1];
			if (*dp == '/')
			    *dp = '\0';
			path = FUNC8(FALSE);
			(void)FUNC4(path, dirpath);
			FUNC2(cp+1, path, expansions);
			FUNC6(path, NULL);
		    }
		} else {
		    /*
		     * Start the search from the local directory
		     */
		    FUNC2(word, path, expansions);
		}
	    } else {
		/*
		 * Return the file -- this should never happen.
		 */
		FUNC2(word, path, expansions);
	    }
	} else {
	    /*
	     * First the files in dot
	     */
	    FUNC3(word, dot, expansions);

	    /*
	     * Then the files in every other directory on the path.
	     */
	    FUNC2(word, path, expansions);
	}
    }
    if (FUNC0(DIR)) {
	FUNC7(expansions, DirPrintWord, NULL);
	FUNC10(debug_file, "\n");
    }
}