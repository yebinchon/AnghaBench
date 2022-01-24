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
typedef  int /*<<< orphan*/  uid_t ;
typedef  int /*<<< orphan*/  u32 ;

/* Variables and functions */
 scalar_t__ AUDIT_LOCKED ; 
 scalar_t__ AUDIT_OFF ; 
 int EPERM ; 
 scalar_t__ audit_enabled ; 
 int FUNC0 (char*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC1(char *function_name, int *to_change,
				  int new, uid_t loginuid, u32 sessionid,
				  u32 sid)
{
	int allow_changes, rc = 0, old = *to_change;

	/* check if we are locked */
	if (audit_enabled == AUDIT_LOCKED)
		allow_changes = 0;
	else
		allow_changes = 1;

	if (audit_enabled != AUDIT_OFF) {
		rc = FUNC0(function_name, new, old, loginuid,
					     sessionid, sid, allow_changes);
		if (rc)
			allow_changes = 0;
	}

	/* If we are allowed, make the change */
	if (allow_changes == 1)
		*to_change = new;
	/* Not allowed, update reason */
	else if (rc == 0)
		rc = -EPERM;
	return rc;
}