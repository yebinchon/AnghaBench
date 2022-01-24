#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uid_t ;
typedef  long u32 ;
struct audit_buffer {int dummy; } ;
typedef  int /*<<< orphan*/  gid_t ;
struct TYPE_5__ {long pid; int /*<<< orphan*/  comm; } ;

/* Variables and functions */
 int /*<<< orphan*/  AUDIT_ANOM_ABEND ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 long SIGQUIT ; 
 int /*<<< orphan*/  audit_enabled ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 unsigned int FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (struct audit_buffer*) ; 
 int /*<<< orphan*/  FUNC3 (struct audit_buffer*,char*,...) ; 
 struct audit_buffer* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct audit_buffer*,int /*<<< orphan*/ ) ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*,long) ; 
 scalar_t__ FUNC8 (long,char**,long*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,long*) ; 

void FUNC10(long signr)
{
	struct audit_buffer *ab;
	u32 sid;
	uid_t auid = FUNC0(current), uid;
	gid_t gid;
	unsigned int sessionid = FUNC1(current);

	if (!audit_enabled)
		return;

	if (signr == SIGQUIT)	/* don't care for those */
		return;

	ab = FUNC4(NULL, GFP_KERNEL, AUDIT_ANOM_ABEND);
	FUNC6(&uid, &gid);
	FUNC3(ab, "auid=%u uid=%u gid=%u ses=%u",
			 auid, uid, gid, sessionid);
	FUNC9(current, &sid);
	if (sid) {
		char *ctx = NULL;
		u32 len;

		if (FUNC8(sid, &ctx, &len))
			FUNC3(ab, " ssid=%u", sid);
		else {
			FUNC3(ab, " subj=%s", ctx);
			FUNC7(ctx, len);
		}
	}
	FUNC3(ab, " pid=%d comm=", current->pid);
	FUNC5(ab, current->comm);
	FUNC3(ab, " sig=%ld", signr);
	FUNC2(ab);
}