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
 int FUNC0 (char**) ; 
 int FUNC1 (char**) ; 
 int FUNC2 (int,int) ; 

__attribute__((used)) static int FUNC3(enum event_type expect, char **tok, int newline_ok)
{
	enum event_type type;

	if (newline_ok)
		type = FUNC0(tok);
	else
		type = FUNC1(tok);
	return FUNC2(type, expect);
}