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
struct conv {int noset; int set; scalar_t__ ctab; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 struct conv* FUNC0 (struct conv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  c_conv ; 
 int /*<<< orphan*/  clist ; 
 scalar_t__ ctab ; 
 int ddflags ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char**,char*) ; 

__attribute__((used)) static void
FUNC4(char *arg)
{
	struct conv *cp, tmp;

	while (arg != NULL) {
		tmp.name = FUNC3(&arg, ",");
		cp = FUNC0(&tmp, clist, FUNC2(clist), sizeof(struct conv),
		    c_conv);
		if (cp == NULL)
			FUNC1(1, "unknown conversion %s", tmp.name);
		if (ddflags & cp->noset)
			FUNC1(1, "%s: illegal conversion combination", tmp.name);
		ddflags |= cp->set;
		if (cp->ctab)
			ctab = cp->ctab;
	}
}