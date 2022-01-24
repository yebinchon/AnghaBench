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
struct TYPE_2__ {int lineno; struct loadedfile* lf; } ;

/* Variables and functions */
 scalar_t__ CONTINUE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FALSE ; 
 scalar_t__ FUNC1 (char*,scalar_t__) ; 
 scalar_t__ FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  PARSE ; 
 int /*<<< orphan*/  PARSE_FATAL ; 
 int /*<<< orphan*/  PARSE_WARNING ; 
 int /*<<< orphan*/  ParseAddCmd ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 scalar_t__ FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 scalar_t__ FUNC12 (char*,char*) ; 
 scalar_t__ FUNC13 (char*) ; 
 char* FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 
 int /*<<< orphan*/  FUNC16 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC18 (char*) ; 
 int /*<<< orphan*/  FUNC19 (char const*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct loadedfile*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ TRUE ; 
 int VARF_UNDEFERR ; 
 int VARF_WANTRES ; 
 int /*<<< orphan*/  VAR_CMD ; 
 int /*<<< orphan*/  VAR_GLOBAL ; 
 int /*<<< orphan*/  FUNC21 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (char*,int) ; 
 char* FUNC23 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC24 (char*) ; 
 char* FUNC25 (char*) ; 
 TYPE_1__* curFile ; 
 int /*<<< orphan*/  debug_file ; 
 int /*<<< orphan*/  FUNC26 (int) ; 
 scalar_t__ fatals ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC29 (char*) ; 
 scalar_t__ inLine ; 
 scalar_t__ FUNC30 (unsigned char) ; 
 int /*<<< orphan*/  loadedfile_nextbuf ; 
 struct loadedfile* FUNC31 (char const*,int) ; 
 char* progname ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/ * FUNC32 (char*,char) ; 
 scalar_t__ FUNC33 (char*,char*,int) ; 
 int /*<<< orphan*/  targCmds ; 
 scalar_t__ targets ; 

void
FUNC34(const char *name, int fd)
{
    char	  *cp;		/* pointer into the line */
    char          *line;	/* the line we're working on */
    struct loadedfile *lf;

    lf = FUNC31(name, fd);

    inLine = FALSE;
    fatals = 0;

    if (name == NULL) {
	    name = "(stdin)";
    }

    FUNC19(name, 0, -1, loadedfile_nextbuf, lf);
    curFile->lf = lf;

    do {
	for (; (line = FUNC14()) != NULL; ) {
	    if (FUNC0(PARSE))
		FUNC28(debug_file, "ParseReadLine (%d): '%s'\n",
			curFile->lineno, line);
	    if (*line == '.') {
		/*
		 * Lines that begin with the special character may be
		 * include or undef directives.
		 * On the other hand they can be suffix rules (.c.o: ...)
		 * or just dependencies for filenames that start '.'.
		 */
		for (cp = line + 1; FUNC30((unsigned char)*cp); cp++) {
		    continue;
		}
		if (FUNC1(cp, FALSE)) {
		    FUNC8(cp);
		    continue;
		}
		if (FUNC33(cp, "undef", 5) == 0) {
		    char *cp2;
		    for (cp += 5; FUNC30((unsigned char) *cp); cp++)
			continue;
		    for (cp2 = cp; !FUNC30((unsigned char) *cp2) &&
				   (*cp2 != '\0'); cp2++)
			continue;
		    *cp2 = '\0';
		    FUNC21(cp, VAR_GLOBAL);
		    continue;
		} else if (FUNC33(cp, "export", 6) == 0) {
		    for (cp += 6; FUNC30((unsigned char) *cp); cp++)
			continue;
		    FUNC22(cp, 1);
		    continue;
		} else if (FUNC33(cp, "unexport", 8) == 0) {
		    FUNC24(cp);
		    continue;
		} else if (FUNC33(cp, "info", 4) == 0 ||
			   FUNC33(cp, "error", 5) == 0 ||
			   FUNC33(cp, "warning", 7) == 0) {
		    if (FUNC13(cp))
			continue;
		}		    
	    }

	    if (*line == '\t') {
		/*
		 * If a line starts with a tab, it can only hope to be
		 * a creation command.
		 */
		cp = line + 1;
	      shellCommand:
		for (; FUNC30 ((unsigned char)*cp); cp++) {
		    continue;
		}
		if (*cp) {
		    if (!inLine)
			FUNC17(PARSE_FATAL,
				     "Unassociated shell command \"%s\"",
				     cp);
		    /*
		     * So long as it's not a blank line and we're actually
		     * in a dependency spec, add the command to the list of
		     * commands of all targets in the dependency spec
		     */
		    if (targets) {
			cp = FUNC25(cp);
			FUNC5(targets, ParseAddCmd, cp);
#ifdef CLEANUP
			Lst_AtEnd(targCmds, cp);
#endif
		    }
		}
		continue;
	    }

#ifdef SYSVINCLUDE
	    if (IsSysVInclude(line)) {
		/*
		 * It's an S3/S5-style "include".
		 */
		ParseTraditionalInclude(line);
		continue;
	    }
#endif
#ifdef GMAKEEXPORT
	    if (strncmp(line, "export", 6) == 0 &&
		isspace((unsigned char) line[6]) &&
		strchr(line, ':') == NULL) {
		/*
		 * It's a Gmake "export".
		 */
		ParseGmakeExport(line);
		continue;
	    }
#endif
	    if (FUNC18(line)) {
		FUNC10();
		FUNC16(line, VAR_GLOBAL);
		continue;
	    }

#ifndef POSIX
	    /*
	     * To make life easier on novices, if the line is indented we
	     * first make sure the line has a dependency operator in it.
	     * If it doesn't have an operator and we're in a dependency
	     * line's script, we assume it's actually a shell command
	     * and add it to the current list of targets.
	     */
	    cp = line;
	    if (FUNC30((unsigned char) line[0])) {
		while ((*cp != '\0') && FUNC30((unsigned char) *cp))
		    cp++;
		while (*cp && (FUNC12(line, cp) ||
			(*cp != ':') && (*cp != '!'))) {
		    cp++;
		}
		if (*cp == '\0') {
		    if (inLine) {
			FUNC17(PARSE_WARNING,
				     "Shell command needs a leading tab");
			goto shellCommand;
		    }
		}
	    }
#endif
	    FUNC10();

	    /*
	     * For some reason - probably to make the parser impossible -
	     * a ';' can be used to separate commands from dependencies.
	     * Attempt to avoid ';' inside substitution patterns.
	     */
	    {
		int level = 0;

		for (cp = line; *cp != 0; cp++) {
		    if (*cp == '\\' && cp[1] != 0) {
			cp++;
			continue;
		    }
		    if (*cp == '$' &&
			(cp[1] == '(' || cp[1] == '{')) {
			level++;
			continue;
		    }
		    if (level > 0) {
			if (*cp == ')' || *cp == '}') {
			    level--;
			    continue;
			}
		    } else if (*cp == ';') {
			break;
		    }
		}
	    }
	    if (*cp != 0)
		/* Terminate the dependency list at the ';' */
		*cp++ = 0;
	    else
		cp = NULL;

	    /*
	     * We now know it's a dependency line so it needs to have all
	     * variables expanded before being parsed. Tell the variable
	     * module to complain if some variable is undefined...
	     */
	    line = FUNC23(NULL, line, VAR_CMD, VARF_UNDEFERR|VARF_WANTRES);

	    /*
	     * Need a non-circular list for the target nodes
	     */
	    if (targets)
		FUNC4(targets, NULL);

	    targets = FUNC6(FALSE);
	    inLine = TRUE;

	    FUNC7(line);
	    FUNC29(line);

	    /* If there were commands after a ';', add them now */
	    if (cp != NULL) {
		goto shellCommand;
	    }
	}
	/*
	 * Reached EOF, but it may be just EOF of an include file...
	 */
    } while (FUNC9() == CONTINUE);

    if (fatals) {
	(void)FUNC27(stdout);
	(void)FUNC28(stderr,
	    "%s: Fatal errors encountered -- cannot continue",
	    progname);
	FUNC20(NULL, NULL);
	FUNC26(1);
    }
}