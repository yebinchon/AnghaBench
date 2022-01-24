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
 int EVENT_DELIM ; 
 int EVENT_DQUOTE ; 
 int EVENT_ITEM ; 
 int EVENT_NEWLINE ; 
 int EVENT_NONE ; 
 int EVENT_OP ; 
 int EVENT_SPACE ; 
 int EVENT_SQUOTE ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static enum event_type FUNC3(int ch)
{
	if (ch == '\n')
		return EVENT_NEWLINE;
	if (FUNC2(ch))
		return EVENT_SPACE;
	if (FUNC0(ch) || ch == '_')
		return EVENT_ITEM;
	if (ch == '\'')
		return EVENT_SQUOTE;
	if (ch == '"')
		return EVENT_DQUOTE;
	if (!FUNC1(ch))
		return EVENT_NONE;
	if (ch == '(' || ch == ')' || ch == ',')
		return EVENT_DELIM;

	return EVENT_OP;
}