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
typedef  int /*<<< orphan*/  uid_t ;
typedef  scalar_t__ u_long ;
struct passwd {int /*<<< orphan*/  pw_uid; } ;
struct TYPE_2__ {int /*<<< orphan*/ * uids; } ;
struct listinfo {scalar_t__ count; scalar_t__ maxcount; TYPE_1__ l; int /*<<< orphan*/  lname; } ;

/* Variables and functions */
 scalar_t__ MAXLOGNAME ; 
 scalar_t__ UID_MAX ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC0 (struct listinfo*) ; 
 struct passwd* FUNC1 (char const*) ; 
 struct passwd* FUNC2 (int /*<<< orphan*/ ) ; 
 int optfatal ; 
 scalar_t__ FUNC3 (char const*) ; 
 scalar_t__ FUNC4 (char const*,char**,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,...) ; 

__attribute__((used)) static int
FUNC6(struct listinfo *inf, const char *elem)
{
	struct passwd *pwd;
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

	pwd = FUNC1(elem);
	if (pwd == NULL) {
		errno = 0;
		bigtemp = FUNC4(elem, &endp, 10);
		if (errno != 0 || *endp != '\0' || bigtemp > UID_MAX)
			FUNC5("No %s named '%s'", inf->lname, elem);
		else {
			/* The string is all digits, so it might be a userID. */
			pwd = FUNC2((uid_t)bigtemp);
			if (pwd == NULL)
				FUNC5("No %s name or ID matches '%s'",
				    inf->lname, elem);
		}
	}
	if (pwd == NULL) {
		/*
		 * These used to be treated as minor warnings (and the
		 * option was simply ignored), but now they are fatal
		 * errors (and the command will be aborted).
		 */
		optfatal = 1;
		return (0);
	}
	if (inf->count >= inf->maxcount)
		FUNC0(inf);
	inf->l.uids[(inf->count)++] = pwd->pw_uid;
	return (1);
}