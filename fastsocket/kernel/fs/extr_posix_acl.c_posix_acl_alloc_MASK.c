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
struct posix_acl {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 struct posix_acl* FUNC0 (size_t const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct posix_acl*,int) ; 

struct posix_acl *
FUNC2(int count, gfp_t flags)
{
	const size_t size = sizeof(struct posix_acl) +
	                    count * sizeof(struct posix_acl_entry);
	struct posix_acl *acl = FUNC0(size, flags);
	if (acl)
		FUNC1(acl, count);
	return acl;
}