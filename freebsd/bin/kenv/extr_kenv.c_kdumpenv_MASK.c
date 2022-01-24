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
 int /*<<< orphan*/  KENV_DUMP ; 
 scalar_t__ Nflag ; 
 char* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ hflag ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,...) ; 
 char* FUNC4 (char*,char) ; 
 scalar_t__ FUNC5 (char*) ; 
 scalar_t__ FUNC6 (char*,char*,int) ; 

__attribute__((used)) static int
FUNC7(void)
{
	char *buf, *bp, *cp;
	int buflen, envlen;

	envlen = FUNC2(KENV_DUMP, NULL, NULL, 0);
	if (envlen < 0)
		return (-1);
	for (;;) {
		buflen = envlen * 120 / 100;
		buf = FUNC0(1, buflen + 1);
		if (buf == NULL)
			return (-1);
		envlen = FUNC2(KENV_DUMP, NULL, buf, buflen);
		if (envlen < 0) {
			FUNC1(buf);
			return (-1);
		}
		if (envlen > buflen)
			FUNC1(buf);
		else
			break;
	}

	for (bp = buf; *bp != '\0'; bp += FUNC5(bp) + 1) {
		if (hflag) {
			if (FUNC6(bp, "hint.", 5) != 0)
				continue;
		}
		cp = FUNC4(bp, '=');
		if (cp == NULL)
			continue;
		*cp++ = '\0';
		if (Nflag)
			FUNC3("%s\n", bp);
		else
			FUNC3("%s=\"%s\"\n", bp, cp);
		bp = cp;
	}

	FUNC1(buf);
	return (0);
}