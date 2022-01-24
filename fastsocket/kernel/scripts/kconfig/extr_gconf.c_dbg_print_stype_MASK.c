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
 int S_BOOLEAN ; 
 int S_HEX ; 
 int S_INT ; 
 int S_OTHER ; 
 int S_STRING ; 
 int S_TRISTATE ; 
 int S_UNKNOWN ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 

const char *FUNC3(int val)
{
	static char buf[256];

	FUNC0(buf, 256);

	if (val == S_UNKNOWN)
		FUNC2(buf, "unknown");
	if (val == S_BOOLEAN)
		FUNC2(buf, "boolean");
	if (val == S_TRISTATE)
		FUNC2(buf, "tristate");
	if (val == S_INT)
		FUNC2(buf, "int");
	if (val == S_HEX)
		FUNC2(buf, "hex");
	if (val == S_STRING)
		FUNC2(buf, "string");
	if (val == S_OTHER)
		FUNC2(buf, "other");

#ifdef DEBUG
	printf("%s", buf);
#endif

	return buf;
}