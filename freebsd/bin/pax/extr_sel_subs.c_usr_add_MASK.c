#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uid_t ;
typedef  size_t u_int ;
struct passwd {scalar_t__ pw_uid; } ;
struct TYPE_3__ {scalar_t__ uid; struct TYPE_3__* fow; } ;
typedef  TYPE_1__ USRT ;

/* Variables and functions */
 unsigned int USR_TB_SZ ; 
 scalar_t__ FUNC0 (char*) ; 
 scalar_t__ FUNC1 (unsigned int,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 struct passwd* FUNC3 (char*) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,...) ; 
 scalar_t__ FUNC6 (char*,int /*<<< orphan*/ *,int) ; 
 TYPE_1__** usrtb ; 

int
FUNC7(char *str)
{
	u_int indx;
	USRT *pt;
	struct passwd *pw;
	uid_t uid;

	/*
	 * create the table if it doesn't exist
	 */
	if ((str == NULL) || (*str == '\0'))
		return(-1);
	if ((usrtb == NULL) &&
 	    ((usrtb = (USRT **)FUNC1(USR_TB_SZ, sizeof(USRT *))) == NULL)) {
		FUNC5(1, "Unable to allocate memory for user selection table");
		return(-1);
	}

	/*
	 * figure out user spec
	 */
	if (str[0] != '#') {
		/*
		 * it is a user name, \# escapes # as first char in user name
		 */
		if ((str[0] == '\\') && (str[1] == '#'))
			++str;
		if ((pw = FUNC3(str)) == NULL) {
			FUNC5(1, "Unable to find uid for user: %s", str);
			return(-1);
		}
		uid = (uid_t)pw->pw_uid;
	} else
#		ifdef NET2_STAT
		uid = (uid_t)atoi(str+1);
#		else
		uid = (uid_t)FUNC6(str+1, NULL, 10);
#		endif
	FUNC2();

	/*
	 * hash it and go down the hash chain (if any) looking for it
	 */
	indx = ((unsigned)uid) % USR_TB_SZ;
	if ((pt = usrtb[indx]) != NULL) {
		while (pt != NULL) {
			if (pt->uid == uid)
				return(0);
			pt = pt->fow;
		}
	}

	/*
	 * uid is not yet in the table, add it to the front of the chain
	 */
	if ((pt = (USRT *)FUNC4(sizeof(USRT))) != NULL) {
		pt->uid = uid;
		pt->fow = usrtb[indx];
		usrtb[indx] = pt;
		return(0);
	}
	FUNC5(1, "User selection table out of memory");
	return(-1);
}