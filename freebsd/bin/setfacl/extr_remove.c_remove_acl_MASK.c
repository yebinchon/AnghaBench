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
typedef  scalar_t__ acl_tag_t ;
typedef  int /*<<< orphan*/ * acl_t ;
typedef  int /*<<< orphan*/  acl_entry_t ;

/* Variables and functions */
 int ACL_FIRST_ENTRY ; 
 scalar_t__ ACL_MASK ; 
 int ACL_NEXT_ENTRY ; 
 scalar_t__ ACL_UNDEFINED_TAG ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 scalar_t__ FUNC7 (int,int) ; 
 int /*<<< orphan*/  FUNC8 (int,char*,char const*) ; 
 int have_mask ; 
 int /*<<< orphan*/  FUNC9 (char*,char const*,...) ; 

int
FUNC10(acl_t acl, acl_t *prev_acl, const char *filename)
{
	acl_entry_t	entry;
	acl_t		acl_new;
	acl_tag_t	tag;
	int		carried_error, entry_id, acl_brand, prev_acl_brand;

	carried_error = 0;

	FUNC3(acl, &acl_brand);
	FUNC3(*prev_acl, &prev_acl_brand);

	if (FUNC7(acl_brand, prev_acl_brand)) {
		FUNC9("%s: branding mismatch; existing ACL is %s, "
		    "entry to be removed is %s", filename,
		    FUNC6(prev_acl_brand), FUNC6(acl_brand));
		return (-1);
	}

	carried_error = 0;

	acl_new = FUNC1(*prev_acl);
	if (acl_new == NULL)
		FUNC8(1, "%s: acl_dup() failed", filename);

	tag = ACL_UNDEFINED_TAG;

	/* find and delete the entry */
	entry_id = ACL_FIRST_ENTRY;
	while (FUNC4(acl, entry_id, &entry) == 1) {
		entry_id = ACL_NEXT_ENTRY;
		if (FUNC5(entry, &tag) == -1)
			FUNC8(1, "%s: acl_get_tag_type() failed", filename);
		if (tag == ACL_MASK)
			have_mask = true;
		if (FUNC0(acl_new, entry) == -1) {
			carried_error++;
			FUNC9("%s: cannot remove non-existent ACL entry",
			    filename);
		}
	}

	FUNC2(*prev_acl);
	*prev_acl = acl_new;

	if (carried_error)
		return (-1);

	return (0);
}