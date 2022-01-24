#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct posix_acl {TYPE_1__* a_entries; } ;
struct jffs2_acl_header {int /*<<< orphan*/  a_version; } ;
struct jffs2_acl_entry_short {int dummy; } ;
struct jffs2_acl_entry {int /*<<< orphan*/  e_id; int /*<<< orphan*/  e_perm; int /*<<< orphan*/  e_tag; } ;
struct TYPE_2__ {int e_tag; void* e_id; void* e_perm; } ;

/* Variables and functions */
#define  ACL_GROUP 133 
#define  ACL_GROUP_OBJ 132 
#define  ACL_MASK 131 
#define  ACL_OTHER 130 
 void* ACL_UNDEFINED_ID ; 
#define  ACL_USER 129 
#define  ACL_USER_OBJ 128 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct posix_acl* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ JFFS2_ACL_VERSION ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (size_t) ; 
 struct posix_acl* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct posix_acl*) ; 

__attribute__((used)) static struct posix_acl *FUNC7(void *value, size_t size)
{
	void *end = value + size;
	struct jffs2_acl_header *header = value;
	struct jffs2_acl_entry *entry;
	struct posix_acl *acl;
	uint32_t ver;
	int i, count;

	if (!value)
		return NULL;
	if (size < sizeof(struct jffs2_acl_header))
		return FUNC0(-EINVAL);
	ver = FUNC3(header->a_version);
	if (ver != JFFS2_ACL_VERSION) {
		FUNC1("Invalid ACL version. (=%u)\n", ver);
		return FUNC0(-EINVAL);
	}

	value += sizeof(struct jffs2_acl_header);
	count = FUNC4(size);
	if (count < 0)
		return FUNC0(-EINVAL);
	if (count == 0)
		return NULL;

	acl = FUNC5(count, GFP_KERNEL);
	if (!acl)
		return FUNC0(-ENOMEM);

	for (i=0; i < count; i++) {
		entry = value;
		if (value + sizeof(struct jffs2_acl_entry_short) > end)
			goto fail;
		acl->a_entries[i].e_tag = FUNC2(entry->e_tag);
		acl->a_entries[i].e_perm = FUNC2(entry->e_perm);
		switch (acl->a_entries[i].e_tag) {
			case ACL_USER_OBJ:
			case ACL_GROUP_OBJ:
			case ACL_MASK:
			case ACL_OTHER:
				value += sizeof(struct jffs2_acl_entry_short);
				acl->a_entries[i].e_id = ACL_UNDEFINED_ID;
				break;

			case ACL_USER:
			case ACL_GROUP:
				value += sizeof(struct jffs2_acl_entry);
				if (value > end)
					goto fail;
				acl->a_entries[i].e_id = FUNC3(entry->e_id);
				break;

			default:
				goto fail;
		}
	}
	if (value != end)
		goto fail;
	return acl;
 fail:
	FUNC6(acl);
	return FUNC0(-EINVAL);
}