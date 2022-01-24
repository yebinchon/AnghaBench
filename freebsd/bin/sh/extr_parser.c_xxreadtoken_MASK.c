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
 int /*<<< orphan*/  BASESYNTAX ; 
#define  PEOF 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TAND ; 
 int /*<<< orphan*/  TBACKGND ; 
 int /*<<< orphan*/  TENDCASE ; 
 int /*<<< orphan*/  TEOF ; 
 int /*<<< orphan*/  TFALLTHRU ; 
 int /*<<< orphan*/  TLP ; 
 int /*<<< orphan*/  TNL ; 
 int /*<<< orphan*/  TOR ; 
 int /*<<< orphan*/  TPIPE ; 
 int /*<<< orphan*/  TRP ; 
 int /*<<< orphan*/  TSEMI ; 
 scalar_t__ doprompt ; 
 int lasttoken ; 
 scalar_t__ needprompt ; 
 char FUNC1 () ; 
 char FUNC2 () ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  plinno ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int FUNC5 (int,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  startlinno ; 
 scalar_t__ tokpushback ; 

__attribute__((used)) static int
FUNC7(void)
{
	int c;

	if (tokpushback) {
		tokpushback = 0;
		return lasttoken;
	}
	if (needprompt) {
		FUNC6(2);
		needprompt = 0;
	}
	startlinno = plinno;
	for (;;) {	/* until token or start of word found */
		c = FUNC3();
		switch (c) {
		case ' ': case '\t':
			continue;
		case '#':
			while ((c = FUNC1()) != '\n' && c != PEOF);
			FUNC4();
			continue;
		case '\\':
			if (FUNC1() == '\n') {
				startlinno = ++plinno;
				if (doprompt)
					FUNC6(2);
				else
					FUNC6(0);
				continue;
			}
			FUNC4();
			/* FALLTHROUGH */
		default:
			return FUNC5(c, BASESYNTAX, (char *)NULL, 0);
		case '\n':
			plinno++;
			needprompt = doprompt;
			FUNC0(TNL);
		case PEOF:
			FUNC0(TEOF);
		case '&':
			if (FUNC2() == '&')
				FUNC0(TAND);
			FUNC4();
			FUNC0(TBACKGND);
		case '|':
			if (FUNC2() == '|')
				FUNC0(TOR);
			FUNC4();
			FUNC0(TPIPE);
		case ';':
			c = FUNC2();
			if (c == ';')
				FUNC0(TENDCASE);
			else if (c == '&')
				FUNC0(TFALLTHRU);
			FUNC4();
			FUNC0(TSEMI);
		case '(':
			FUNC0(TLP);
		case ')':
			FUNC0(TRP);
		}
	}
#undef RETURN
}