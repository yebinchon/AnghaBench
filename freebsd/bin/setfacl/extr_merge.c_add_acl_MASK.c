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
typedef  int /*<<< orphan*/  uint ;
typedef  int /*<<< orphan*/ * acl_t ;
typedef  int /*<<< orphan*/  acl_entry_t ;

/* Variables and functions */
 int ACL_BRAND_NFS4 ; 
 int ACL_FIRST_ENTRY ; 
 int ACL_NEXT_ENTRY ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 scalar_t__ FUNC7 (int,int) ; 
 int /*<<< orphan*/  FUNC8 (int,char*,char const*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC10 (char*,char const*,...) ; 

int
FUNC11(acl_t acl, uint entry_number, acl_t *prev_acl, const char *filename)
{
	acl_entry_t entry, entry_new;
	acl_t acl_new;
	int entry_id, acl_brand, prev_acl_brand;

	FUNC4(acl, &acl_brand);
	FUNC4(*prev_acl, &prev_acl_brand);

	if (prev_acl_brand != ACL_BRAND_NFS4) {
		FUNC10("%s: the '-a' option is only applicable to NFSv4 ACLs",
		    filename);
		return (-1);
	}

	if (FUNC7(acl_brand, ACL_BRAND_NFS4)) {
		FUNC10("%s: branding mismatch; existing ACL is NFSv4, "
		    "entry to be added is %s", filename,
		    FUNC6(acl_brand));
		return (-1);
	}

	acl_new = FUNC2(*prev_acl);
	if (acl_new == NULL)
		FUNC8(1, "%s: acl_dup() failed", filename);

	entry_id = ACL_FIRST_ENTRY;

	while (FUNC5(acl, entry_id, &entry) == 1) {
		entry_id = ACL_NEXT_ENTRY;

		if (FUNC1(&acl_new, &entry_new, entry_number) == -1) {
			FUNC9("%s: acl_create_entry_np() failed", filename); 
			FUNC3(acl_new);
			return (-1);
		}

		/*
		 * Without this increment, adding several
		 * entries at once, for example
		 * "setfacl -m user:1:r:allow,user:2:r:allow",
		 * would make them appear in reverse order.
		 */
		entry_number++;

		if (FUNC0(entry_new, entry) == -1)
			FUNC8(1, "%s: acl_copy_entry() failed", filename);
	}

	FUNC3(*prev_acl);
	*prev_acl = acl_new;

	return (0);
}