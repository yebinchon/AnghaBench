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
struct var {int flags; int name_len; char* text; int /*<<< orphan*/  (* func ) (char*) ;struct var* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  INTOFF ; 
 int /*<<< orphan*/  INTON ; 
 int /*<<< orphan*/  LC_ALL ; 
 int VEXPORT ; 
 int VNOFUNC ; 
 int VNOLOCAL ; 
 int VNOSET ; 
 int VREADONLY ; 
 int VSTACK ; 
 int VTEXTFIXED ; 
 int VUNSET ; 
 scalar_t__ aflag ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 struct var* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*) ; 
 struct var* FUNC5 (char*,struct var***,int*) ; 
 scalar_t__ forcelocal ; 
 int iflag ; 
 scalar_t__ FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 struct var vmail ; 
 struct var vmpath ; 

void
FUNC12(char *s, int flags)
{
	struct var *vp, **vpp;
	int nlen;

	if (aflag)
		flags |= VEXPORT;
	if (forcelocal && !(flags & (VNOSET | VNOLOCAL)))
		FUNC7(s);
	vp = FUNC5(s, &vpp, &nlen);
	if (vp != NULL) {
		if (vp->flags & VREADONLY) {
			if ((flags & (VTEXTFIXED|VSTACK)) == 0)
				FUNC2(s);
			FUNC4("%.*s: is read only", vp->name_len, vp->text);
		}
		if (flags & VNOSET) {
			if ((flags & (VTEXTFIXED|VSTACK)) == 0)
				FUNC2(s);
			return;
		}
		INTOFF;

		if (vp->func && (flags & VNOFUNC) == 0)
			(*vp->func)(s + vp->name_len + 1);

		if ((vp->flags & (VTEXTFIXED|VSTACK)) == 0)
			FUNC2(vp->text);

		vp->flags &= ~(VTEXTFIXED|VSTACK|VUNSET);
		vp->flags |= flags;
		vp->text = s;

		/*
		 * We could roll this to a function, to handle it as
		 * a regular variable function callback, but why bother?
		 *
		 * Note: this assumes iflag is not set to 1 initially.
		 * As part of initvar(), this is called before arguments
		 * are looked at.
		 */
		if ((vp == &vmpath || (vp == &vmail && ! FUNC8())) &&
		    iflag == 1)
			FUNC1(1);
		if ((vp->flags & VEXPORT) && FUNC6(s)) {
			FUNC0(s, 1);
			(void) FUNC9(LC_ALL, "");
			FUNC11();
		}
		INTON;
		return;
	}
	/* not found */
	if (flags & VNOSET) {
		if ((flags & (VTEXTFIXED|VSTACK)) == 0)
			FUNC2(s);
		return;
	}
	INTOFF;
	vp = FUNC3(sizeof (*vp));
	vp->flags = flags;
	vp->text = s;
	vp->name_len = nlen;
	vp->next = *vpp;
	vp->func = NULL;
	*vpp = vp;
	if ((vp->flags & VEXPORT) && FUNC6(s)) {
		FUNC0(s, 1);
		(void) FUNC9(LC_ALL, "");
		FUNC11();
	}
	INTON;
}