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

/* Variables and functions */
 int P_CHOICE ; 
 int P_COMMENT ; 
 int P_DEFAULT ; 
 int P_MENU ; 
 int P_PROMPT ; 
 int P_UNKNOWN ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 

const char *FUNC3(int val)
{
	static char buf[256];

	FUNC0(buf, 256);

	if (val == P_UNKNOWN)
		FUNC2(buf, "unknown");
	if (val == P_PROMPT)
		FUNC2(buf, "prompt");
	if (val == P_COMMENT)
		FUNC2(buf, "comment");
	if (val == P_MENU)
		FUNC2(buf, "menu");
	if (val == P_DEFAULT)
		FUNC2(buf, "default");
	if (val == P_CHOICE)
		FUNC2(buf, "choice");

#ifdef DEBUG
	printf("%s", buf);
#endif

	return buf;
}