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
typedef  int /*<<< orphan*/  u32 ;
struct audit_names {int name_len; unsigned long ino; int type; int /*<<< orphan*/  osid; int /*<<< orphan*/  rdev; int /*<<< orphan*/  gid; int /*<<< orphan*/  uid; int /*<<< orphan*/  mode; int /*<<< orphan*/  dev; TYPE_1__* name; } ;
struct audit_context {int /*<<< orphan*/  pwd; } ;
struct audit_buffer {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
#define  AUDIT_NAME_FULL 132 
 int /*<<< orphan*/  AUDIT_PATH ; 
#define  AUDIT_TYPE_CHILD_CREATE 131 
#define  AUDIT_TYPE_CHILD_DELETE 130 
#define  AUDIT_TYPE_NORMAL 129 
#define  AUDIT_TYPE_PARENT 128 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct audit_buffer*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct audit_buffer*) ; 
 int /*<<< orphan*/  FUNC4 (struct audit_buffer*,struct audit_names*) ; 
 int /*<<< orphan*/  FUNC5 (struct audit_buffer*,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (struct audit_buffer*,int /*<<< orphan*/ ,int) ; 
 struct audit_buffer* FUNC7 (struct audit_context*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct audit_buffer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,char**,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC11(struct audit_context *context, struct audit_names *n,
			   int record_num, int *call_panic)
{
	struct audit_buffer *ab;
	ab = FUNC7(context, GFP_KERNEL, AUDIT_PATH);
	if (!ab)
		return; /* audit_panic has been called */

	FUNC5(ab, "item=%d", record_num);

	if (n->name) {
		switch (n->name_len) {
		case AUDIT_NAME_FULL:
			/* log the full path */
			FUNC5(ab, " name=");
			FUNC8(ab, n->name->name);
			break;
		case 0:
			/* name was specified as a relative path and the
			 * directory component is the cwd */
			FUNC2(ab, "name=", &context->pwd);
			break;
		default:
			/* log the name's directory component */
			FUNC5(ab, " name=");
			FUNC6(ab, n->name->name,
						    n->name_len);
		}
	} else
		FUNC5(ab, " name=(null)");

	if (n->ino != (unsigned long)-1) {
		FUNC5(ab, " inode=%lu"
				 " dev=%02x:%02x mode=%#o"
				 " ouid=%u ogid=%u rdev=%02x:%02x",
				 n->ino,
				 FUNC0(n->dev),
				 FUNC1(n->dev),
				 n->mode,
				 n->uid,
				 n->gid,
				 FUNC0(n->rdev),
				 FUNC1(n->rdev));
	}
	if (n->osid != 0) {
		char *ctx = NULL;
		u32 len;
		if (FUNC10(
			n->osid, &ctx, &len)) {
			FUNC5(ab, " osid=%u", n->osid);
			*call_panic = 2;
		} else {
			FUNC5(ab, " obj=%s", ctx);
			FUNC9(ctx, len);
		}
	}

	/* log the audit_names record type */
	FUNC5(ab, " nametype=");
	switch(n->type) {
	case AUDIT_TYPE_NORMAL:
		FUNC5(ab, "NORMAL");
		break;
	case AUDIT_TYPE_PARENT:
		FUNC5(ab, "PARENT");
		break;
	case AUDIT_TYPE_CHILD_DELETE:
		FUNC5(ab, "DELETE");
		break;
	case AUDIT_TYPE_CHILD_CREATE:
		FUNC5(ab, "CREATE");
		break;
	default:
		FUNC5(ab, "UNKNOWN");
		break;
	}

	FUNC4(ab, n);

	FUNC3(ab);
}