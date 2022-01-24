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
typedef  scalar_t__ u32 ;
struct audit_context {int dummy; } ;
struct audit_buffer {int dummy; } ;
typedef  int /*<<< orphan*/  pid_t ;

/* Variables and functions */
 int /*<<< orphan*/  AUDIT_OBJ_PID ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct audit_buffer*) ; 
 int /*<<< orphan*/  FUNC1 (struct audit_buffer*,char*,...) ; 
 struct audit_buffer* FUNC2 (struct audit_context*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct audit_buffer*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__,char**,scalar_t__*) ; 

__attribute__((used)) static int FUNC6(struct audit_context *context, pid_t pid,
				 uid_t auid, uid_t uid, unsigned int sessionid,
				 u32 sid, char *comm)
{
	struct audit_buffer *ab;
	char *ctx = NULL;
	u32 len;
	int rc = 0;

	ab = FUNC2(context, GFP_KERNEL, AUDIT_OBJ_PID);
	if (!ab)
		return rc;

	FUNC1(ab, "opid=%d oauid=%d ouid=%d oses=%d", pid, auid,
			 uid, sessionid);
	if (sid) {
		if (FUNC5(sid, &ctx, &len)) {
			FUNC1(ab, " obj=(none)");
			rc = 1;
		} else {
			FUNC1(ab, " obj=%s", ctx);
			FUNC4(ctx, len);
		}
	}
	FUNC1(ab, " ocomm=");
	FUNC3(ab, comm);
	FUNC0(ab);

	return rc;
}