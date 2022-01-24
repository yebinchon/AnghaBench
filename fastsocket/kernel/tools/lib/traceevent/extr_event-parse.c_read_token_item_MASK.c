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
 int EVENT_NONE ; 
 int EVENT_SPACE ; 
 int FUNC0 (char**) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static enum event_type FUNC2(char **tok)
{
	enum event_type type;

	for (;;) {
		type = FUNC0(tok);
		if (type != EVENT_SPACE && type != EVENT_NEWLINE)
			return type;
		FUNC1(*tok);
		*tok = NULL;
	}

	/* not reached */
	*tok = NULL;
	return EVENT_NONE;
}