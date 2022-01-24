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
struct If {scalar_t__* form; } ;
typedef  int /*<<< orphan*/  Token ;
typedef  int /*<<< orphan*/  Boolean ;

/* Variables and functions */
 int COND_INVALID ; 
 int /*<<< orphan*/  PARSE_FATAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  TOK_NONE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 char* condExpr ; 
 int /*<<< orphan*/  condPushBack ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 struct If const* if_info ; 
 struct If* ifs ; 
 int /*<<< orphan*/  lhsStrict ; 

int
FUNC3(const struct If *info, char *line, Boolean *value, int eprint, Boolean strictLHS)
{
    static const struct If *dflt_info;
    const struct If *sv_if_info = if_info;
    char *sv_condExpr = condExpr;
    Token sv_condPushBack = condPushBack;
    int rval;

    lhsStrict = strictLHS;

    while (*line == ' ' || *line == '\t')
	line++;

    if (info == NULL && (info = dflt_info) == NULL) {
	/* Scan for the entry for .if - it can't be first */
	for (info = ifs; ; info++)
	    if (info->form[0] == 0)
		break;
	dflt_info = info;
    }
    FUNC1(info != NULL);

    if_info = info;
    condExpr = line;
    condPushBack = TOK_NONE;

    rval = FUNC2(value);

    if (rval == COND_INVALID && eprint)
	FUNC0(PARSE_FATAL, "Malformed conditional (%s)", line);

    if_info = sv_if_info;
    condExpr = sv_condExpr;
    condPushBack = sv_condPushBack;

    return rval;
}