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
typedef  int /*<<< orphan*/  Boolean ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int PARSE_FATAL ; 
 int PARSE_INFO ; 
 int PARSE_WARNING ; 
 int /*<<< orphan*/  FUNC0 (int,char*,char*) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  VARF_WANTRES ; 
 int /*<<< orphan*/  VAR_CMD ; 
 char* FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (unsigned char) ; 
 scalar_t__ FUNC5 (unsigned char) ; 

__attribute__((used)) static Boolean
FUNC6(char *line)
{
    int mtype;

    switch(*line) {
    case 'i':
	mtype = PARSE_INFO;
	break;
    case 'w':
	mtype = PARSE_WARNING;
	break;
    case 'e':
	mtype = PARSE_FATAL;
	break;
    default:
	FUNC0(PARSE_WARNING, "invalid syntax: \".%s\"", line);
	return FALSE;
    }

    while (FUNC4((unsigned char)*line))
	line++;
    if (!FUNC5((unsigned char)*line))
	return FALSE;			/* not for us */
    while (FUNC5((unsigned char)*line))
	line++;

    line = FUNC1(NULL, line, VAR_CMD, VARF_WANTRES);
    FUNC0(mtype, "%s", line);
    FUNC3(line);

    if (mtype == PARSE_FATAL) {
	/* Terminate immediately. */
	FUNC2(1);
    }
    return TRUE;
}