#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct worddest {int /*<<< orphan*/  state; } ;
struct TYPE_2__ {int nparam; char** p; } ;

/* Variables and functions */
 int EXP_FULL ; 
 int EXP_SPLIT ; 
 int /*<<< orphan*/  FUNC0 (char,int,int /*<<< orphan*/ ,struct worddest*) ; 
 int NSHORTOPTS ; 
 int /*<<< orphan*/  FUNC1 (char,int /*<<< orphan*/ ) ; 
 int VSLENGTH ; 
 int VSTRIMLEFT ; 
 int VSTRIMLEFTMAX ; 
 int VSTRIMRIGHT ; 
 int VSTRIMRIGHTMAX ; 
 int /*<<< orphan*/  WORD_QUOTEMARK ; 
 char* arg0 ; 
 int FUNC2 (char const*) ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int,char*) ; 
 int /*<<< orphan*/  expdest ; 
 int /*<<< orphan*/  FUNC5 () ; 
 char* FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (char const) ; 
 int oexitstatus ; 
 int /*<<< orphan*/ * optletter ; 
 int /*<<< orphan*/ * optval ; 
 int rootpid ; 
 TYPE_1__ shellparam ; 
 int /*<<< orphan*/  FUNC8 (char*,int,int,int,struct worddest*) ; 

__attribute__((used)) static void
FUNC9(const char *name, int quoted, int subtype, int flag,
    struct worddest *dst)
{
	int num;
	char *p;
	int i;
	int splitlater;
	char sep[2];
	char **ap;
	char buf[(NSHORTOPTS > 10 ? NSHORTOPTS : 10) + 1];

	if (subtype == VSLENGTH)
		flag &= ~EXP_FULL;
	splitlater = subtype == VSTRIMLEFT || subtype == VSTRIMLEFTMAX ||
		subtype == VSTRIMRIGHT || subtype == VSTRIMRIGHTMAX;

	switch (*name) {
	case '$':
		num = rootpid;
		break;
	case '?':
		num = oexitstatus;
		break;
	case '#':
		num = shellparam.nparam;
		break;
	case '!':
		num = FUNC3();
		break;
	case '-':
		p = buf;
		for (i = 0 ; i < NSHORTOPTS ; i++) {
			if (optval[i])
				*p++ = optletter[i];
		}
		*p = '\0';
		FUNC8(buf, flag, subtype, quoted, dst);
		return;
	case '@':
		if (flag & EXP_SPLIT && quoted) {
			for (ap = shellparam.p ; (p = *ap++) != NULL ; ) {
				FUNC8(p, flag, subtype, quoted, dst);
				if (*ap) {
					if (splitlater)
						FUNC1('\0', expdest);
					else
						FUNC0('\0', flag, expdest,
						    dst);
				}
			}
			if (shellparam.nparam > 0)
				dst->state = WORD_QUOTEMARK;
			return;
		}
		/* FALLTHROUGH */
	case '*':
		if (FUNC5())
			sep[0] = FUNC6()[0];
		else
			sep[0] = ' ';
		sep[1] = '\0';
		for (ap = shellparam.p ; (p = *ap++) != NULL ; ) {
			FUNC8(p, flag, subtype, quoted, dst);
			if (!*ap)
				break;
			if (sep[0])
				FUNC8(sep, flag, subtype, quoted, dst);
			else if (flag & EXP_SPLIT && !quoted && **ap != '\0') {
				if (splitlater)
					FUNC1('\0', expdest);
				else
					FUNC0('\0', flag, expdest, dst);
			}
		}
		return;
	default:
		if (FUNC7(*name)) {
			num = FUNC2(name);
			if (num == 0)
				p = arg0;
			else if (num > 0 && num <= shellparam.nparam)
				p = shellparam.p[num - 1];
			else
				return;
			FUNC8(p, flag, subtype, quoted, dst);
		}
		return;
	}
	FUNC4(num, buf);
	FUNC8(buf, flag, subtype, quoted, dst);
}