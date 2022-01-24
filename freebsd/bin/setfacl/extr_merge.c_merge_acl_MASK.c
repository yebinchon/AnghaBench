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
typedef  int acl_tag_t ;
typedef  int /*<<< orphan*/ * acl_t ;
typedef  int /*<<< orphan*/  acl_permset_t ;
typedef  int /*<<< orphan*/  acl_flagset_t ;
typedef  scalar_t__ acl_entry_type_t ;
typedef  int /*<<< orphan*/  acl_entry_t ;

/* Variables and functions */
 int ACL_BRAND_NFS4 ; 
#define  ACL_EVERYONE 134 
 int ACL_FIRST_ENTRY ; 
#define  ACL_GROUP 133 
#define  ACL_GROUP_OBJ 132 
#define  ACL_MASK 131 
 int ACL_NEXT_ENTRY ; 
#define  ACL_OTHER 130 
#define  ACL_USER 129 
#define  ACL_USER_OBJ 128 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int*) ; 
 int FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 scalar_t__ FUNC15 (int,int) ; 
 int /*<<< orphan*/  FUNC16 (int,char*,char const*) ; 
 int /*<<< orphan*/  FUNC17 (int,char*,char const*,int) ; 
 int have_mask ; 
 int FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC19 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC20 (char*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC21(acl_t acl, acl_t *prev_acl, const char *filename)
{
	acl_entry_t entry, entry_new;
	acl_permset_t permset;
	acl_t acl_new;
	acl_tag_t tag, tag_new;
	acl_entry_type_t entry_type, entry_type_new;
	acl_flagset_t flagset;
	int entry_id, entry_id_new, have_entry, had_entry, entry_number = 0;
	int acl_brand, prev_acl_brand;

	FUNC5(acl, &acl_brand);
	FUNC5(*prev_acl, &prev_acl_brand);

	if (FUNC15(acl_brand, prev_acl_brand)) {
		FUNC20("%s: branding mismatch; existing ACL is %s, "
		    "entry to be merged is %s", filename,
		    FUNC14(prev_acl_brand), FUNC14(acl_brand));
		return (-1);
	}

	acl_new = FUNC3(*prev_acl);
	if (acl_new == NULL)
		FUNC16(1, "%s: acl_dup() failed", filename);

	entry_id = ACL_FIRST_ENTRY;

	while (FUNC6(acl, entry_id, &entry) == 1) {
		entry_id = ACL_NEXT_ENTRY;
		have_entry = 0;
		had_entry = 0;

		/* keep track of existing ACL_MASK entries */
		if (FUNC10(entry, &tag) == -1)
			FUNC16(1, "%s: acl_get_tag_type() failed - "
			    "invalid ACL entry", filename);
		if (tag == ACL_MASK)
			have_mask = true;

		/* check against the existing ACL entries */
		entry_id_new = ACL_FIRST_ENTRY;
		while (FUNC6(acl_new, entry_id_new, &entry_new) == 1) {
			entry_id_new = ACL_NEXT_ENTRY;

			if (FUNC10(entry, &tag) == -1)
				FUNC16(1, "%s: acl_get_tag_type() failed",
				    filename);
			if (FUNC10(entry_new, &tag_new) == -1)
				FUNC16(1, "%s: acl_get_tag_type() failed",
				    filename);
			if (tag != tag_new)
				continue;

			/*
			 * For NFSv4, in addition to "tag" and "id" we also
			 * compare "entry_type".
			 */
			if (acl_brand == ACL_BRAND_NFS4) {
				if (FUNC7(entry, &entry_type))
					FUNC16(1, "%s: acl_get_entry_type_np() "
					    "failed", filename);
				if (FUNC7(entry_new, &entry_type_new))
					FUNC16(1, "%s: acl_get_entry_type_np() "
					    "failed", filename);
				if (entry_type != entry_type_new)
					continue;
			}
		
			switch(tag) {
			case ACL_USER:
			case ACL_GROUP:
				have_entry = FUNC18(&entry,
				    &entry_new, acl_brand);
				if (have_entry == 0)
					break;
				/* FALLTHROUGH */
			case ACL_USER_OBJ:
			case ACL_GROUP_OBJ:
			case ACL_OTHER:
			case ACL_MASK:
			case ACL_EVERYONE:
				if (FUNC9(entry, &permset) == -1)
					FUNC16(1, "%s: acl_get_permset() failed",
					    filename);
				if (FUNC13(entry_new, permset) == -1)
					FUNC16(1, "%s: acl_set_permset() failed",
					    filename);

				if (acl_brand == ACL_BRAND_NFS4) {
					if (FUNC7(entry, &entry_type))
						FUNC16(1, "%s: acl_get_entry_type_np() failed",
						    filename);
					if (FUNC11(entry_new, entry_type))
						FUNC16(1, "%s: acl_set_entry_type_np() failed",
						    filename);
					if (FUNC8(entry, &flagset))
						FUNC16(1, "%s: acl_get_flagset_np() failed",
						    filename);
					if (FUNC12(entry_new, flagset))
						FUNC16(1, "%s: acl_set_flagset_np() failed",
						    filename);
				}
				had_entry = have_entry = 1;
				break;
			default:
				/* should never be here */
				FUNC17(1, "%s: invalid tag type: %i", filename, tag);
				break;
			}
		}

		/* if this entry has not been found, it must be new */
		if (had_entry == 0) {

			/*
			 * NFSv4 ACL entries must be prepended to the ACL.
			 * Appending them at the end makes no sense, since
			 * in most cases they wouldn't even get evaluated.
			 */
			if (acl_brand == ACL_BRAND_NFS4) {
				if (FUNC2(&acl_new, &entry_new, entry_number) == -1) {
					FUNC19("%s: acl_create_entry_np() failed", filename); 
					FUNC4(acl_new);
					return (-1);
				}
				/*
				 * Without this increment, adding several
				 * entries at once, for example
				 * "setfacl -m user:1:r:allow,user:2:r:allow",
				 * would make them appear in reverse order.
				 */
				entry_number++;
			} else {
				if (FUNC1(&acl_new, &entry_new) == -1) {
					FUNC19("%s: acl_create_entry() failed", filename); 
					FUNC4(acl_new);
					return (-1);
				}
			}
			if (FUNC0(entry_new, entry) == -1)
				FUNC16(1, "%s: acl_copy_entry() failed", filename);
		}
	}

	FUNC4(*prev_acl);
	*prev_acl = acl_new;

	return (0);
}