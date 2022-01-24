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
struct posix_acl_entry {int dummy; } ;
struct posix_acl {TYPE_1__* a_entries; } ;
struct ocfs2_acl_entry {int /*<<< orphan*/  e_id; int /*<<< orphan*/  e_perm; int /*<<< orphan*/  e_tag; } ;
struct TYPE_2__ {int /*<<< orphan*/  e_id; void* e_perm; void* e_tag; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct posix_acl* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct posix_acl* FUNC3 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct posix_acl *FUNC4(const void *value, size_t size)
{
	int n, count;
	struct posix_acl *acl;

	if (!value)
		return NULL;
	if (size < sizeof(struct posix_acl_entry))
		return FUNC0(-EINVAL);

	count = size / sizeof(struct posix_acl_entry);
	if (count < 0)
		return FUNC0(-EINVAL);
	if (count == 0)
		return NULL;

	acl = FUNC3(count, GFP_NOFS);
	if (!acl)
		return FUNC0(-ENOMEM);
	for (n = 0; n < count; n++) {
		struct ocfs2_acl_entry *entry =
			(struct ocfs2_acl_entry *)value;

		acl->a_entries[n].e_tag  = FUNC1(entry->e_tag);
		acl->a_entries[n].e_perm = FUNC1(entry->e_perm);
		acl->a_entries[n].e_id   = FUNC2(entry->e_id);
		value += sizeof(struct posix_acl_entry);

	}
	return acl;
}