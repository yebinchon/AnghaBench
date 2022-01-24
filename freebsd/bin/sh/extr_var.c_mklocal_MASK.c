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
struct var {int flags; size_t name_len; int /*<<< orphan*/ * text; } ;
struct localvar {int flags; struct localvar* next; struct var* vp; int /*<<< orphan*/ * text; } ;

/* Variables and functions */
 int /*<<< orphan*/  INTOFF ; 
 int /*<<< orphan*/  INTON ; 
 int VNOLOCAL ; 
 int VSTRFIXED ; 
 int VTEXTFIXED ; 
 int VUNSET ; 
 void* FUNC0 (int) ; 
 struct var* FUNC1 (char*,struct var***,int /*<<< orphan*/ *) ; 
 struct localvar* localvars ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  optval ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC6 (char*,char) ; 

void
FUNC7(char *name)
{
	struct localvar *lvp;
	struct var **vpp;
	struct var *vp;

	INTOFF;
	lvp = FUNC0(sizeof (struct localvar));
	if (name[0] == '-' && name[1] == '\0') {
		lvp->text = FUNC0(sizeof optval);
		FUNC2(lvp->text, optval, sizeof optval);
		vp = NULL;
	} else {
		vp = FUNC1(name, &vpp, NULL);
		if (vp == NULL) {
			if (FUNC6(name, '='))
				FUNC5(FUNC3(name), VSTRFIXED | VNOLOCAL);
			else
				FUNC4(name, NULL, VSTRFIXED | VNOLOCAL);
			vp = *vpp;	/* the new variable */
			lvp->text = NULL;
			lvp->flags = VUNSET;
		} else {
			lvp->text = vp->text;
			lvp->flags = vp->flags;
			vp->flags |= VSTRFIXED|VTEXTFIXED;
			if (name[vp->name_len] == '=')
				FUNC5(FUNC3(name), VNOLOCAL);
		}
	}
	lvp->vp = vp;
	lvp->next = localvars;
	localvars = lvp;
	INTON;
}