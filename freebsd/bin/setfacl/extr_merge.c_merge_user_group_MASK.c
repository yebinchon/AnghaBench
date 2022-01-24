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
typedef  scalar_t__ uid_t ;
typedef  int /*<<< orphan*/  acl_permset_t ;
typedef  int /*<<< orphan*/  acl_flagset_t ;
typedef  int /*<<< orphan*/  acl_entry_type_t ;
typedef  int /*<<< orphan*/  acl_entry_t ;

/* Variables and functions */
 int ACL_BRAND_NFS4 ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__* FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int,char*) ; 

__attribute__((used)) static int
FUNC9(acl_entry_t *entry, acl_entry_t *entry_new, int acl_brand)
{
	acl_permset_t permset;
	acl_entry_type_t entry_type;
	acl_flagset_t flagset;
	int have_entry;
	uid_t *id, *id_new;

	have_entry = 0;

	id = FUNC4(*entry);
	if (id == NULL)
		FUNC8(1, "acl_get_qualifier() failed");
	id_new = FUNC4(*entry_new);
	if (id_new == NULL)
		FUNC8(1, "acl_get_qualifier() failed");
	if (*id == *id_new) {
		/* any other matches */
		if (FUNC3(*entry, &permset) == -1)
			FUNC8(1, "acl_get_permset() failed");
		if (FUNC7(*entry_new, permset) == -1)
			FUNC8(1, "acl_set_permset() failed");

		if (acl_brand == ACL_BRAND_NFS4) {
			if (FUNC1(*entry, &entry_type))
				FUNC8(1, "acl_get_entry_type_np() failed");
			if (FUNC5(*entry_new, entry_type))
				FUNC8(1, "acl_set_entry_type_np() failed");
			if (FUNC2(*entry, &flagset))
				FUNC8(1, "acl_get_flagset_np() failed");
			if (FUNC6(*entry_new, flagset))
				FUNC8(1, "acl_set_flagset_np() failed");
		}

		have_entry = 1;
	}
	FUNC0(id);
	FUNC0(id_new);

	return (have_entry);
}