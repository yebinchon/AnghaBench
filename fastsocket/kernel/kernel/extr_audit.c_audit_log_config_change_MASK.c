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
typedef  int u32 ;
struct audit_buffer {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AUDIT_CONFIG_CHANGE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct audit_buffer*) ; 
 int /*<<< orphan*/  FUNC1 (struct audit_buffer*,char*,...) ; 
 struct audit_buffer* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int FUNC4 (int,char**,int*) ; 

__attribute__((used)) static int FUNC5(char *function_name, int new, int old,
				   uid_t loginuid, u32 sessionid, u32 sid,
				   int allow_changes)
{
	struct audit_buffer *ab;
	int rc = 0;

	ab = FUNC2(NULL, GFP_KERNEL, AUDIT_CONFIG_CHANGE);
	FUNC1(ab, "%s=%d old=%d auid=%u ses=%u", function_name, new,
			 old, loginuid, sessionid);
	if (sid) {
		char *ctx = NULL;
		u32 len;

		rc = FUNC4(sid, &ctx, &len);
		if (rc) {
			FUNC1(ab, " sid=%u", sid);
			allow_changes = 0; /* Something weird, deny request */
		} else {
			FUNC1(ab, " subj=%s", ctx);
			FUNC3(ctx, len);
		}
	}
	FUNC1(ab, " res=%d", allow_changes);
	FUNC0(ab);
	return rc;
}