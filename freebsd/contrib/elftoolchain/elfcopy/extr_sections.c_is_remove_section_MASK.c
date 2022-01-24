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
struct sec_action {int /*<<< orphan*/  copy; scalar_t__ remove; } ;
struct elfcopy {scalar_t__ strip; int flags; } ;

/* Variables and functions */
 int DISCARD_LOCAL ; 
 int SEC_COPY ; 
 int SEC_REMOVE ; 
 scalar_t__ STRIP_ALL ; 
 scalar_t__ STRIP_DEBUG ; 
 scalar_t__ STRIP_DWO ; 
 scalar_t__ STRIP_NONDEBUG ; 
 scalar_t__ STRIP_NONDWO ; 
 scalar_t__ STRIP_UNNEEDED ; 
 int /*<<< orphan*/  SYMOP_KEEP ; 
 scalar_t__ FUNC0 (char const*) ; 
 scalar_t__ FUNC1 (char const*) ; 
 struct sec_action* FUNC2 (struct elfcopy*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (struct elfcopy*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (char const*,char*) ; 

int
FUNC5(struct elfcopy *ecp, const char *name)
{

	/* Always keep section name table */
	if (FUNC4(name, ".shstrtab") == 0)
		return 0;
	if (FUNC4(name, ".symtab") == 0 ||
	    FUNC4(name, ".strtab") == 0) {
		if (ecp->strip == STRIP_ALL && FUNC3(
		    ecp, NULL, SYMOP_KEEP) == NULL)
			return (1);
		else
			return (0);
	}

	if (ecp->strip == STRIP_DWO && FUNC1(name))
		return (1);
	if (ecp->strip == STRIP_NONDWO && !FUNC1(name))
		return (1);

	if (FUNC0(name)) {
		if (ecp->strip == STRIP_ALL ||
		    ecp->strip == STRIP_DEBUG ||
		    ecp->strip == STRIP_UNNEEDED ||
		    (ecp->flags & DISCARD_LOCAL))
			return (1);
		if (ecp->strip == STRIP_NONDEBUG)
			return (0);
	}

	if ((ecp->flags & SEC_REMOVE) || (ecp->flags & SEC_COPY)) {
		struct sec_action *sac;

		sac = FUNC2(ecp, name, 0);
		if ((ecp->flags & SEC_REMOVE) && sac != NULL && sac->remove)
			return (1);
		if ((ecp->flags & SEC_COPY) && (sac == NULL || !sac->copy))
			return (1);
	}

	return (0);
}