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

/* Variables and functions */
 int ACL_TYPE_ACCESS ; 
 int ACL_TYPE_DEFAULT ; 
 int EOPNOTSUPP ; 
 scalar_t__ FUNC0 (char const*,char*) ; 

__attribute__((used)) static int
FUNC1(const char *name)
{
	if (FUNC0(name, "posix_acl_access") == 0)
		return ACL_TYPE_ACCESS;
	else if (FUNC0(name, "posix_acl_default") == 0)
		return ACL_TYPE_DEFAULT;
	return -EOPNOTSUPP;
}