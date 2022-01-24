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
typedef  size_t u32 ;
struct netlbl_audit {int dummy; } ;
struct cipso_v4_doi {size_t doi; size_t type; int* tags; int /*<<< orphan*/  list; int /*<<< orphan*/  refcount; } ;
struct audit_buffer {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AUDIT_MAC_CIPSOV4_ADD ; 
 scalar_t__ CIPSO_V4_DOI_UNKNOWN ; 
#define  CIPSO_V4_MAP_LOCAL 135 
#define  CIPSO_V4_MAP_PASS 134 
#define  CIPSO_V4_MAP_TRANS 133 
#define  CIPSO_V4_TAG_ENUM 132 
#define  CIPSO_V4_TAG_INVALID 131 
#define  CIPSO_V4_TAG_LOCAL 130 
 size_t CIPSO_V4_TAG_MAXCNT ; 
#define  CIPSO_V4_TAG_RANGE 129 
#define  CIPSO_V4_TAG_RBITMAP 128 
 int EEXIST ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (struct audit_buffer*) ; 
 int /*<<< orphan*/  FUNC2 (struct audit_buffer*,char*,size_t,char const*,int) ; 
 int /*<<< orphan*/  cipso_v4_doi_list ; 
 int /*<<< orphan*/  cipso_v4_doi_list_lock ; 
 int /*<<< orphan*/ * FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct audit_buffer* FUNC5 (int /*<<< orphan*/ ,struct netlbl_audit*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

int FUNC8(struct cipso_v4_doi *doi_def,
		     struct netlbl_audit *audit_info)
{
	int ret_val = -EINVAL;
	u32 iter;
	u32 doi;
	u32 doi_type;
	struct audit_buffer *audit_buf;

	doi = doi_def->doi;
	doi_type = doi_def->type;

	if (doi_def == NULL || doi_def->doi == CIPSO_V4_DOI_UNKNOWN)
		goto doi_add_return;
	for (iter = 0; iter < CIPSO_V4_TAG_MAXCNT; iter++) {
		switch (doi_def->tags[iter]) {
		case CIPSO_V4_TAG_RBITMAP:
			break;
		case CIPSO_V4_TAG_RANGE:
		case CIPSO_V4_TAG_ENUM:
			if (doi_def->type != CIPSO_V4_MAP_PASS)
				goto doi_add_return;
			break;
		case CIPSO_V4_TAG_LOCAL:
			if (doi_def->type != CIPSO_V4_MAP_LOCAL)
				goto doi_add_return;
			break;
		case CIPSO_V4_TAG_INVALID:
			if (iter == 0)
				goto doi_add_return;
			break;
		default:
			goto doi_add_return;
		}
	}

	FUNC0(&doi_def->refcount, 1);

	FUNC6(&cipso_v4_doi_list_lock);
	if (FUNC3(doi_def->doi) != NULL) {
		FUNC7(&cipso_v4_doi_list_lock);
		ret_val = -EEXIST;
		goto doi_add_return;
	}
	FUNC4(&doi_def->list, &cipso_v4_doi_list);
	FUNC7(&cipso_v4_doi_list_lock);
	ret_val = 0;

doi_add_return:
	audit_buf = FUNC5(AUDIT_MAC_CIPSOV4_ADD, audit_info);
	if (audit_buf != NULL) {
		const char *type_str;
		switch (doi_type) {
		case CIPSO_V4_MAP_TRANS:
			type_str = "trans";
			break;
		case CIPSO_V4_MAP_PASS:
			type_str = "pass";
			break;
		case CIPSO_V4_MAP_LOCAL:
			type_str = "local";
			break;
		default:
			type_str = "(unknown)";
		}
		FUNC2(audit_buf,
				 " cipso_doi=%u cipso_type=%s res=%u",
				 doi, type_str, ret_val == 0 ? 1 : 0);
		FUNC1(audit_buf);
	}

	return ret_val;
}