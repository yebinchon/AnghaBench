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
struct inode {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACL_TYPE_DEFAULT ; 
 size_t FUNC0 (struct inode*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,size_t) ; 
 int /*<<< orphan*/  shmem_acl_ops ; 

__attribute__((used)) static size_t
FUNC1(struct inode *inode, char *list, size_t list_size,
		       const char *name, size_t name_len)
{
	return FUNC0(inode, &shmem_acl_ops, ACL_TYPE_DEFAULT,
				list, list_size);
}