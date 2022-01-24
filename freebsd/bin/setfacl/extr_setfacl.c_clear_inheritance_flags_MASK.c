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
typedef  int /*<<< orphan*/ * acl_t ;
typedef  int /*<<< orphan*/  acl_flagset_t ;
typedef  int /*<<< orphan*/  acl_entry_t ;

/* Variables and functions */
 int ACL_BRAND_NFS4 ; 
 int ACL_ENTRY_DIRECTORY_INHERIT ; 
 int ACL_ENTRY_FILE_INHERIT ; 
 int /*<<< orphan*/  ACL_ENTRY_INHERIT_ONLY ; 
 int ACL_ENTRY_NO_PROPAGATE_INHERIT ; 
 int ACL_FIRST_ENTRY ; 
 int ACL_NEXT_ENTRY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

__attribute__((used)) static acl_t
FUNC8(acl_t acl)
{
	acl_t nacl;
	acl_entry_t acl_entry;
	acl_flagset_t acl_flagset;
	int acl_brand, entry_id;

	(void)FUNC3(acl, &acl_brand);
	if (acl_brand != ACL_BRAND_NFS4)
		return (acl);

	nacl = FUNC2(acl);
	if (nacl == NULL) {
		FUNC7("acl_dup() failed");
		return (acl);
	}

	entry_id = ACL_FIRST_ENTRY;
	while (FUNC4(nacl, entry_id, &acl_entry) == 1) {
		entry_id = ACL_NEXT_ENTRY;
		if (FUNC6(acl_entry, &acl_flagset) != 0) {
			FUNC7("acl_get_flagset_np() failed");
			continue;
		}
		if (FUNC5(acl_flagset, ACL_ENTRY_INHERIT_ONLY) == 1) {
			if (FUNC0(nacl, acl_entry) != 0)
				FUNC7("acl_delete_entry() failed");
			continue;
		}
		if (FUNC1(acl_flagset,
		    ACL_ENTRY_FILE_INHERIT |
		    ACL_ENTRY_DIRECTORY_INHERIT |
		    ACL_ENTRY_NO_PROPAGATE_INHERIT) != 0)
			FUNC7("acl_delete_flag_np() failed");
	}

	return (nacl);
}