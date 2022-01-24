#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct inode {int /*<<< orphan*/  i_ino; TYPE_1__* i_sb; } ;
struct audit_buffer {int dummy; } ;
struct TYPE_8__ {unsigned char const* comm; int /*<<< orphan*/  pid; int /*<<< orphan*/  audit_context; } ;
struct TYPE_7__ {int /*<<< orphan*/  uid; } ;
struct TYPE_6__ {int /*<<< orphan*/  s_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (struct audit_buffer*) ; 
 int /*<<< orphan*/  FUNC3 (struct audit_buffer*,char*,...) ; 
 struct audit_buffer* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct audit_buffer*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (struct audit_buffer*) ; 
 int /*<<< orphan*/  FUNC7 (struct audit_buffer*,unsigned char const*) ; 
 TYPE_3__* current ; 
 TYPE_2__* FUNC8 () ; 
 int /*<<< orphan*/  ima_audit ; 

void FUNC9(int audit_msgno, struct inode *inode,
			 const unsigned char *fname, const char *op,
			 const char *cause, int result, int audit_info)
{
	struct audit_buffer *ab;

	if (!ima_audit && audit_info == 1) /* Skip informational messages */
		return;

	ab = FUNC4(current->audit_context, GFP_KERNEL, audit_msgno);
	FUNC3(ab, "pid=%d uid=%u auid=%u ses=%u",
			 current->pid, FUNC8()->uid,
			 FUNC0(current),
			 FUNC1(current));
	FUNC6(ab);
	FUNC3(ab, " op=");
	FUNC5(ab, op);
	FUNC3(ab, " cause=");
	FUNC5(ab, cause);
	FUNC3(ab, " comm=");
	FUNC7(ab, current->comm);
	if (fname) {
		FUNC3(ab, " name=");
		FUNC7(ab, fname);
	}
	if (inode)
		FUNC3(ab, " dev=%s ino=%lu",
				 inode->i_sb->s_id, inode->i_ino);
	FUNC3(ab, " res=%d", !result);
	FUNC2(ab);
}