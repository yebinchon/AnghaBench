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
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  SMK_FSDEFAULT ; 
 int /*<<< orphan*/  SMK_FSFLOOR ; 
 int /*<<< orphan*/  SMK_FSHAT ; 
 int /*<<< orphan*/  SMK_FSROOT ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 char* FUNC3 (char*,char) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 char* FUNC5 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(char *orig, char *smackopts)
{
	char *cp, *commap, *otheropts, *dp;

	otheropts = (char *)FUNC1(GFP_KERNEL);
	if (otheropts == NULL)
		return -ENOMEM;

	for (cp = orig, commap = orig; commap != NULL; cp = commap + 1) {
		if (FUNC5(cp, SMK_FSDEFAULT) == cp)
			dp = smackopts;
		else if (FUNC5(cp, SMK_FSFLOOR) == cp)
			dp = smackopts;
		else if (FUNC5(cp, SMK_FSHAT) == cp)
			dp = smackopts;
		else if (FUNC5(cp, SMK_FSROOT) == cp)
			dp = smackopts;
		else
			dp = otheropts;

		commap = FUNC3(cp, ',');
		if (commap != NULL)
			*commap = '\0';

		if (*dp != '\0')
			FUNC2(dp, ",");
		FUNC2(dp, cp);
	}

	FUNC4(orig, otheropts);
	FUNC0((unsigned long)otheropts);

	return 0;
}