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
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 char* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*) ; 
 int FUNC6 (char const*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char const*,int) ; 

__attribute__((used)) static void
FUNC8(const char *word, const char *brace, Lst path, Lst expansions)
{
    const char   *end;	    	/* Character after the closing brace */
    const char   *cp;	    	/* Current position in brace clause */
    const char   *start;   	/* Start of current piece of brace clause */
    int	    	  bracelevel;	/* Number of braces we've seen. If we see a
				 * right brace when this is 0, we've hit the
				 * end of the clause. */
    char    	 *file;    	/* Current expansion */
    int	    	  otherLen; 	/* The length of the other pieces of the
				 * expansion (chars before and after the
				 * clause in 'word') */
    char    	 *cp2;	    	/* Pointer for checking for wildcards in
				 * expansion before calling Dir_Expand */

    start = brace+1;

    /*
     * Find the end of the brace clause first, being wary of nested brace
     * clauses.
     */
    for (end = start, bracelevel = 0; *end != '\0'; end++) {
	if (*end == '{') {
	    bracelevel++;
	} else if ((*end == '}') && (bracelevel-- == 0)) {
	    break;
	}
    }
    if (*end == '\0') {
	FUNC1("Unterminated {} clause \"%s\"", start);
	return;
    } else {
	end++;
    }
    otherLen = brace - word + FUNC6(end);

    for (cp = start; cp < end; cp++) {
	/*
	 * Find the end of this piece of the clause.
	 */
	bracelevel = 0;
	while (*cp != ',') {
	    if (*cp == '{') {
		bracelevel++;
	    } else if ((*cp == '}') && (bracelevel-- <= 0)) {
		break;
	    }
	    cp++;
	}
	/*
	 * Allocate room for the combination and install the three pieces.
	 */
	file = FUNC3(otherLen + cp - start + 1);
	if (brace != word) {
	    FUNC7(file, word, brace-word);
	}
	if (cp != start) {
	    FUNC7(&file[brace-word], start, cp-start);
	}
	FUNC5(&file[(brace-word)+(cp-start)], end);

	/*
	 * See if the result has any wildcards in it. If we find one, call
	 * Dir_Expand right away, telling it to place the result on our list
	 * of expansions.
	 */
	for (cp2 = file; *cp2 != '\0'; cp2++) {
	    switch(*cp2) {
	    case '*':
	    case '?':
	    case '{':
	    case '[':
		FUNC0(file, path, expansions);
		goto next;
	    }
	}
	if (*cp2 == '\0') {
	    /*
	     * Hit the end w/o finding any wildcards, so stick the expansion
	     * on the end of the list.
	     */
	    (void)FUNC2(expansions, file);
	} else {
	next:
	    FUNC4(file);
	}
	start = cp+1;
    }
}