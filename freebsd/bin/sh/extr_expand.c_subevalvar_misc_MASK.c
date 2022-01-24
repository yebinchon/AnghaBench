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
struct nodelist {int dummy; } ;

/* Variables and functions */
 char const CTLENDVAR ; 
 int /*<<< orphan*/  EXP_TILDE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
#define  VSASSIGN 129 
 int VSNUL ; 
#define  VSQUESTION 128 
 int /*<<< orphan*/  FUNC2 () ; 
 char* FUNC3 (char const*,struct nodelist**,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  expdest ; 
 int /*<<< orphan*/  out2 ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char const*,char*,int /*<<< orphan*/ ) ; 
 char* FUNC7 () ; 

__attribute__((used)) static const char *
FUNC8(const char *p, struct nodelist **restrict argbackq,
    const char *var, int subtype, int startloc, int varflags)
{
	const char *end;
	char *startp;
	int amount;

	end = FUNC3(p, argbackq, EXP_TILDE, NULL);
	FUNC0(expdest);
	startp = FUNC7() + startloc;

	switch (subtype) {
	case VSASSIGN:
		FUNC6(var, startp, 0);
		amount = startp - expdest;
		FUNC1(amount, expdest);
		return end;

	case VSQUESTION:
		if (*p != CTLENDVAR) {
			FUNC5(out2, "%s\n", startp);
			FUNC4((char *)NULL);
		}
		FUNC4("%.*s: parameter %snot set", (int)(p - var - 1),
		      var, (varflags & VSNUL) ? "null or " : "");

	default:
		FUNC2();
	}
}