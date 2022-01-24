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
struct TYPE_2__ {int lineno; } ;

/* Variables and functions */
#define  COND_INVALID 130 
#define  COND_PARSE 129 
#define  COND_SKIP 128 
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  PARSE_FATAL ; 
 int /*<<< orphan*/  PARSE_RAW ; 
 int /*<<< orphan*/  PARSE_SKIP ; 
 char* FUNC4 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 TYPE_1__* curFile ; 

__attribute__((used)) static char *
FUNC6(void)
{
    char 	  *line;    	/* Result */
    int	    	  lineLength;	/* Length of result */
    int	    	  lineno;	/* Saved line # */
    int	    	  rval;

    for (;;) {
	line = FUNC4(0, &lineLength);
	if (line == NULL)
	    return NULL;

	if (line[0] != '.')
	    return line;

	/*
	 * The line might be a conditional. Ask the conditional module
	 * about it and act accordingly
	 */
	switch (FUNC0(line)) {
	case COND_SKIP:
	    /* Skip to next conditional that evaluates to COND_PARSE.  */
	    do {
		line = FUNC4(PARSE_SKIP, &lineLength);
	    } while (line && FUNC0(line) != COND_PARSE);
	    if (line == NULL)
		break;
	    continue;
	case COND_PARSE:
	    continue;
	case COND_INVALID:    /* Not a conditional line */
	    /* Check for .for loops */
	    rval = FUNC2(line);
	    if (rval == 0)
		/* Not a .for line */
		break;
	    if (rval < 0)
		/* Syntax error - error printed, ignore line */
		continue;
	    /* Start of a .for loop */
	    lineno = curFile->lineno;
	    /* Accumulate loop lines until matching .endfor */
	    do {
		line = FUNC4(PARSE_RAW, &lineLength);
		if (line == NULL) {
		    FUNC5(PARSE_FATAL,
			     "Unexpected end of file in for loop.");
		    break;
		}
	    } while (FUNC1(line));
	    /* Stash each iteration as a new 'input file' */
	    FUNC3(lineno);
	    /* Read next line from for-loop buffer */
	    continue;
	}
	return (line);
    }
}