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
typedef  char* u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct audit_buffer {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  audit_enabled ; 
 int /*<<< orphan*/  FUNC0 (struct audit_buffer*,char*,char*,...) ; 
 struct audit_buffer* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int FUNC3 (char*,char**,char**) ; 

__attribute__((used)) static int FUNC4(struct audit_buffer **ab, u16 msg_type,
				     u32 pid, u32 uid, uid_t auid, u32 ses,
				     u32 sid)
{
	int rc = 0;
	char *ctx = NULL;
	u32 len;

	if (!audit_enabled) {
		*ab = NULL;
		return rc;
	}

	*ab = FUNC1(NULL, GFP_KERNEL, msg_type);
	FUNC0(*ab, "user pid=%d uid=%u auid=%u ses=%u",
			 pid, uid, auid, ses);
	if (sid) {
		rc = FUNC3(sid, &ctx, &len);
		if (rc)
			FUNC0(*ab, " ssid=%u", sid);
		else {
			FUNC0(*ab, " subj=%s", ctx);
			FUNC2(ctx, len);
		}
	}

	return rc;
}