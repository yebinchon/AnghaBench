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
typedef  scalar_t__ u_long ;
struct TYPE_2__ {int /*<<< orphan*/ * gids; } ;
struct listinfo {scalar_t__ count; scalar_t__ maxcount; TYPE_1__ l; int /*<<< orphan*/  lname; } ;
struct group {int /*<<< orphan*/  gr_gid; } ;
typedef  int /*<<< orphan*/  gid_t ;

/* Variables and functions */
 scalar_t__ GID_MAX ; 
 scalar_t__ MAXLOGNAME ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC0 (struct listinfo*) ; 
 struct group* FUNC1 (int /*<<< orphan*/ ) ; 
 struct group* FUNC2 (char const*) ; 
 int optfatal ; 
 scalar_t__ FUNC3 (char const*) ; 
 scalar_t__ FUNC4 (char const*,char**,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,...) ; 

__attribute__((used)) static int
FUNC6(struct listinfo *inf, const char *elem)
{
	struct group *grp;
	const char *nameorID;
	char *endp;
	u_long bigtemp;

	if (*elem == '\0' || FUNC3(elem) >= MAXLOGNAME) {
		if (*elem == '\0')
			FUNC5("Invalid (zero-length) %s name", inf->lname);
		else
			FUNC5("%s name too long: %s", inf->lname, elem);
		optfatal = 1;
		return (0);		/* Do not add this value. */
	}

	/*
	 * SUSv3 states that `ps -G grouplist' should match "real-group
	 * ID numbers", and does not mention group-names.  I do want to
	 * also support group-names, so this tries for a group-id first,
	 * and only tries for a name if that doesn't work.  This is the
	 * opposite order of what is done in addelem_uid(), but in
	 * practice the order would only matter for group-names which
	 * are all-numeric.
	 */
	grp = NULL;
	nameorID = "named";
	errno = 0;
	bigtemp = FUNC4(elem, &endp, 10);
	if (errno == 0 && *endp == '\0' && bigtemp <= GID_MAX) {
		nameorID = "name or ID matches";
		grp = FUNC1((gid_t)bigtemp);
	}
	if (grp == NULL)
		grp = FUNC2(elem);
	if (grp == NULL) {
		FUNC5("No %s %s '%s'", inf->lname, nameorID, elem);
		optfatal = 1;
		return (0);
	}
	if (inf->count >= inf->maxcount)
		FUNC0(inf);
	inf->l.gids[(inf->count)++] = grp->gr_gid;
	return (1);
}