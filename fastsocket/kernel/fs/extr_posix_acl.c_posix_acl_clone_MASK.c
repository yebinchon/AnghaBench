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
struct posix_acl_entry {int dummy; } ;
struct posix_acl {int a_count; int /*<<< orphan*/  a_refcount; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 struct posix_acl* FUNC1 (struct posix_acl const*,int,int /*<<< orphan*/ ) ; 

struct posix_acl *
FUNC2(const struct posix_acl *acl, gfp_t flags)
{
	struct posix_acl *clone = NULL;

	if (acl) {
		int size = sizeof(struct posix_acl) + acl->a_count *
		           sizeof(struct posix_acl_entry);
		clone = FUNC1(acl, size, flags);
		if (clone)
			FUNC0(&clone->a_refcount, 1);
	}
	return clone;
}