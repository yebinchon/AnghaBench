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
typedef  int /*<<< orphan*/ * acl_entry_t ;

/* Variables and functions */
 int ACL_FIRST_ENTRY ; 
 scalar_t__ ACL_MASK ; 
 int ACL_NEXT_ENTRY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ **) ; 
 int FUNC4 (int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,char const*) ; 
 scalar_t__ have_mask ; 
 int /*<<< orphan*/  n_flag ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char const*) ; 

int
FUNC8(acl_t *prev_acl, const char *filename)
{
	acl_entry_t entry;
	acl_t acl;
	acl_tag_t tag;
	int entry_id;

	entry = NULL;

	/*
	 * ... if a mask entry is specified, then the permissions of the mask
	 * entry in the resulting ACL shall be set to the permissions in the
	 * specified ACL mask entry.
	 */
	if (have_mask)
		return (0);

	acl = FUNC1(*prev_acl);
	if (acl == NULL)
		FUNC5(1, "%s: acl_dup() failed", filename);

	if (!n_flag) {
		/*
		 * If no mask entry is specified and the -n option is not
		 * specified, then the permissions of the resulting ACL mask
		 * entry shall be set to the union of the permissions
		 * associated with all entries which belong to the file group
		 * class in the resulting ACL
		 */
		if (FUNC0(&acl)) {
			FUNC6("%s: acl_calc_mask() failed", filename);
			FUNC2(acl);
			return (-1);
		}
	} else {
		/*
		 * If no mask entry is specified and the -n option is
		 * specified, then the permissions of the resulting ACL
		 * mask entry shall remain unchanged ...
		 */

		entry_id = ACL_FIRST_ENTRY;

		while (FUNC3(acl, entry_id, &entry) == 1) {
			entry_id = ACL_NEXT_ENTRY;
			if (FUNC4(entry, &tag) == -1)
				FUNC5(1, "%s: acl_get_tag_type() failed",
				    filename);

			if (tag == ACL_MASK) {
				FUNC2(acl);
				return (0);
			}
		}

		/*
		 * If no mask entry is specified, the -n option is specified,
		 * and no ACL mask entry exists in the ACL associated with the
		 * file, then write an error message to standard error and
		 * continue with the next file.
		 */
		FUNC7("%s: warning: no mask entry", filename);
		FUNC2(acl);
		return (0);
	}

	FUNC2(*prev_acl);
	*prev_acl = FUNC1(acl);
	FUNC2(acl);

	return (0);
}