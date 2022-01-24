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
typedef  enum event_type { ____Placeholder_event_type } event_type ;

/* Variables and functions */
 int EVENT_NEWLINE ; 
 int EVENT_SPACE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (int) ; 
 char FUNC2 () ; 
 int FUNC3 (char**) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,char,char) ; 
 scalar_t__ FUNC5 (char*,char*) ; 

__attribute__((used)) static enum event_type FUNC6(char **tok)
{
	enum event_type type;
	char *token = NULL;

	do {
		FUNC0(token);
		type = FUNC3(&token);
	} while (type == EVENT_NEWLINE || type == EVENT_SPACE);

	/* If token is = or ! check to see if the next char is ~ */
	if (token &&
	    (FUNC5(token, "=") == 0 || FUNC5(token, "!") == 0) &&
	    FUNC2() == '~') {
		/* append it */
		*tok = FUNC1(3);
		FUNC4(*tok, "%c%c", *token, '~');
		FUNC0(token);
		/* Now remove the '~' from the buffer */
		FUNC3(&token);
		FUNC0(token);
	} else
		*tok = token;

	return type;
}