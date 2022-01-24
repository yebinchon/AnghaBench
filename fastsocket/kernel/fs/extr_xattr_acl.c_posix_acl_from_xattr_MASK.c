#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct posix_acl_entry {int e_tag; int /*<<< orphan*/  e_id; void* e_perm; } ;
struct posix_acl {struct posix_acl_entry* a_entries; } ;
struct TYPE_3__ {scalar_t__ a_version; } ;
typedef  TYPE_1__ posix_acl_xattr_header ;
struct TYPE_4__ {int /*<<< orphan*/  e_id; int /*<<< orphan*/  e_perm; int /*<<< orphan*/  e_tag; } ;
typedef  TYPE_2__ posix_acl_xattr_entry ;

/* Variables and functions */
#define  ACL_GROUP 133 
#define  ACL_GROUP_OBJ 132 
#define  ACL_MASK 131 
#define  ACL_OTHER 130 
 int /*<<< orphan*/  ACL_UNDEFINED_ID ; 
#define  ACL_USER 129 
#define  ACL_USER_OBJ 128 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  EOPNOTSUPP ; 
 struct posix_acl* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  POSIX_ACL_XATTR_VERSION ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct posix_acl* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct posix_acl*) ; 
 int FUNC6 (size_t) ; 

struct posix_acl *
FUNC7(const void *value, size_t size)
{
	posix_acl_xattr_header *header = (posix_acl_xattr_header *)value;
	posix_acl_xattr_entry *entry = (posix_acl_xattr_entry *)(header+1), *end;
	int count;
	struct posix_acl *acl;
	struct posix_acl_entry *acl_e;

	if (!value)
		return NULL;
	if (size < sizeof(posix_acl_xattr_header))
		 return FUNC0(-EINVAL);
	if (header->a_version != FUNC1(POSIX_ACL_XATTR_VERSION))
		return FUNC0(-EOPNOTSUPP);

	count = FUNC6(size);
	if (count < 0)
		return FUNC0(-EINVAL);
	if (count == 0)
		return NULL;
	
	acl = FUNC4(count, GFP_NOFS);
	if (!acl)
		return FUNC0(-ENOMEM);
	acl_e = acl->a_entries;
	
	for (end = entry + count; entry != end; acl_e++, entry++) {
		acl_e->e_tag  = FUNC2(entry->e_tag);
		acl_e->e_perm = FUNC2(entry->e_perm);

		switch(acl_e->e_tag) {
			case ACL_USER_OBJ:
			case ACL_GROUP_OBJ:
			case ACL_MASK:
			case ACL_OTHER:
				acl_e->e_id = ACL_UNDEFINED_ID;
				break;

			case ACL_USER:
			case ACL_GROUP:
				acl_e->e_id = FUNC3(entry->e_id);
				break;

			default:
				goto fail;
		}
	}
	return acl;

fail:
	FUNC5(acl);
	return FUNC0(-EINVAL);
}