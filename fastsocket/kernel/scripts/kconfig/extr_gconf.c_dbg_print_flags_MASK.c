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
 int SYMBOL_AUTO ; 
 int SYMBOL_CHANGED ; 
 int SYMBOL_CHECK ; 
 int SYMBOL_CHOICE ; 
 int SYMBOL_CHOICEVAL ; 
 int SYMBOL_CONST ; 
 int SYMBOL_OPTIONAL ; 
 int SYMBOL_VALID ; 
 int SYMBOL_WRITE ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int FUNC3 (char*) ; 

const char *FUNC4(int val)
{
	static char buf[256];

	FUNC0(buf, 256);

	if (val & SYMBOL_CONST)
		FUNC2(buf, "const/");
	if (val & SYMBOL_CHECK)
		FUNC2(buf, "check/");
	if (val & SYMBOL_CHOICE)
		FUNC2(buf, "choice/");
	if (val & SYMBOL_CHOICEVAL)
		FUNC2(buf, "choiceval/");
	if (val & SYMBOL_VALID)
		FUNC2(buf, "valid/");
	if (val & SYMBOL_OPTIONAL)
		FUNC2(buf, "optional/");
	if (val & SYMBOL_WRITE)
		FUNC2(buf, "write/");
	if (val & SYMBOL_CHANGED)
		FUNC2(buf, "changed/");
	if (val & SYMBOL_AUTO)
		FUNC2(buf, "auto/");

	buf[FUNC3(buf) - 1] = '\0';
#ifdef DEBUG
	printf("%s", buf);
#endif

	return buf;
}