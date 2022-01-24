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
typedef  scalar_t__ uint ;
typedef  scalar_t__ acl_tag_t ;
typedef  int /*<<< orphan*/ * acl_t ;
typedef  int /*<<< orphan*/  acl_entry_t ;

/* Variables and functions */
 int ACL_FIRST_ENTRY ; 
 scalar_t__ ACL_MASK ; 
 int ACL_NEXT_ENTRY ; 
 scalar_t__ ACL_UNDEFINED_TAG ; 
 int FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,char const*) ; 
 int have_mask ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*) ; 

int
FUNC7(uint entry_number, acl_t *prev_acl, const char *filename)
{
	acl_entry_t	entry;
	acl_t		acl_new;
	acl_tag_t	tag;
	int		carried_error, entry_id;
	uint		i;

	carried_error = 0;

	acl_new = FUNC1(*prev_acl);
	if (acl_new == NULL)
		FUNC5(1, "%s: acl_dup() failed", filename);

	tag = ACL_UNDEFINED_TAG;

	/*
	 * Find out whether we're removing the mask entry,
	 * to behave the same as the routine above.
	 *
	 * XXX: Is this loop actually needed?
	 */
	entry_id = ACL_FIRST_ENTRY;
	i = 0;
	while (FUNC3(acl_new, entry_id, &entry) == 1) {
		entry_id = ACL_NEXT_ENTRY;
		if (i != entry_number)
			continue;
		if (FUNC4(entry, &tag) == -1)
			FUNC5(1, "%s: acl_get_tag_type() failed", filename);
		if (tag == ACL_MASK)
			have_mask = true;
	}

	if (FUNC0(acl_new, entry_number) == -1) {
		carried_error++;
		FUNC6("%s: acl_delete_entry_np() failed", filename);
	}

	FUNC2(*prev_acl);
	*prev_acl = acl_new;

	if (carried_error)
		return (-1);

	return (0);
}