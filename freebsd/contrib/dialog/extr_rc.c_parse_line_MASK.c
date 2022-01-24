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
typedef  int /*<<< orphan*/  PARSE_LINE ;

/* Variables and functions */
 int /*<<< orphan*/  LINE_EMPTY ; 
 int /*<<< orphan*/  LINE_EQUALS ; 
 int /*<<< orphan*/  LINE_ERROR ; 
 int /*<<< orphan*/  FUNC0 (char) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (char*,int) ; 
 scalar_t__ FUNC3 (char*) ; 

__attribute__((used)) static PARSE_LINE
FUNC4(char *line, char **var, char **value)
{
    int i = 0;

    /* ignore white space at beginning of line */
    i = FUNC2(line, i);

    if (line[i] == '\0')	/* line is blank */
	return LINE_EMPTY;
    else if (line[i] == '#')	/* line is comment */
	return LINE_EMPTY;
    else if (line[i] == '=')	/* variable names cannot start with a '=' */
	return LINE_ERROR;

    /* set 'var' to variable name */
    *var = line + i++;		/* skip to next character */

    /* find end of variable name */
    while (!FUNC1(FUNC0(line[i])) && line[i] != '=' && line[i] != '\0')
	i++;

    if (line[i] == '\0')	/* syntax error */
	return LINE_ERROR;
    else if (line[i] == '=')
	line[i++] = '\0';
    else {
	line[i++] = '\0';

	/* skip white space before '=' */
	i = FUNC2(line, i);

	if (line[i] != '=')	/* syntax error */
	    return LINE_ERROR;
	else
	    i++;		/* skip the '=' */
    }

    /* skip white space after '=' */
    i = FUNC2(line, i);

    if (line[i] == '\0')
	return LINE_ERROR;
    else
	*value = line + i;	/* set 'value' to value string */

    /* trim trailing white space from 'value' */
    i = (int) FUNC3(*value) - 1;
    while (FUNC1(FUNC0((*value)[i])) && i > 0)
	i--;
    (*value)[i + 1] = '\0';

    return LINE_EQUALS;		/* no syntax error in line */
}