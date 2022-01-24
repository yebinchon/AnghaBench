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
typedef  int /*<<< orphan*/  u32 ;
struct netlbl_audit {int dummy; } ;
struct cipso_v4_doi {int /*<<< orphan*/  rcu; int /*<<< orphan*/  list; int /*<<< orphan*/  refcount; } ;
struct audit_buffer {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AUDIT_MAC_CIPSOV4_DEL ; 
 int EBUSY ; 
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct audit_buffer*) ; 
 int /*<<< orphan*/  FUNC2 (struct audit_buffer*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  cipso_v4_doi_free_rcu ; 
 int /*<<< orphan*/  cipso_v4_doi_list_lock ; 
 struct cipso_v4_doi* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct audit_buffer* FUNC7 (int /*<<< orphan*/ ,struct netlbl_audit*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

int FUNC10(u32 doi, struct netlbl_audit *audit_info)
{
	int ret_val;
	struct cipso_v4_doi *doi_def;
	struct audit_buffer *audit_buf;

	FUNC8(&cipso_v4_doi_list_lock);
	doi_def = FUNC5(doi);
	if (doi_def == NULL) {
		FUNC9(&cipso_v4_doi_list_lock);
		ret_val = -ENOENT;
		goto doi_remove_return;
	}
	if (!FUNC0(&doi_def->refcount)) {
		FUNC9(&cipso_v4_doi_list_lock);
		ret_val = -EBUSY;
		goto doi_remove_return;
	}
	FUNC6(&doi_def->list);
	FUNC9(&cipso_v4_doi_list_lock);

	FUNC4();
	FUNC3(&doi_def->rcu, cipso_v4_doi_free_rcu);
	ret_val = 0;

doi_remove_return:
	audit_buf = FUNC7(AUDIT_MAC_CIPSOV4_DEL, audit_info);
	if (audit_buf != NULL) {
		FUNC2(audit_buf,
				 " cipso_doi=%u res=%u",
				 doi, ret_val == 0 ? 1 : 0);
		FUNC1(audit_buf);
	}

	return ret_val;
}