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
struct stat {int st_mode; } ;
typedef  int /*<<< orphan*/ * acl_t ;
typedef  int /*<<< orphan*/  acl_permset_t ;
typedef  int /*<<< orphan*/  acl_entry_t ;

/* Variables and functions */
 int /*<<< orphan*/  ACL_EXECUTE ; 
 int /*<<< orphan*/  ACL_GROUP_OBJ ; 
 int /*<<< orphan*/  ACL_OTHER ; 
 int /*<<< orphan*/  ACL_READ ; 
 int /*<<< orphan*/  ACL_USER_OBJ ; 
 int /*<<< orphan*/  ACL_WRITE ; 
 int S_IRGRP ; 
 int S_IROTH ; 
 int S_IRUSR ; 
 int S_IWGRP ; 
 int S_IWOTH ; 
 int S_IWUSR ; 
 int S_IXGRP ; 
 int S_IXOTH ; 
 int S_IXUSR ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static acl_t
FUNC7(const struct stat *sb)
{
	acl_t acl;
	acl_entry_t entry;
	acl_permset_t perms;

	/* create the ACL */
	acl = FUNC4(3);
	if (!acl)
		return NULL;

	/* First entry: ACL_USER_OBJ */
	if (FUNC2(&acl, &entry) == -1)
		return NULL;
	if (FUNC6(entry, ACL_USER_OBJ) == -1)
		return NULL;

	if (FUNC3(entry, &perms) == -1)
		return NULL;
	if (FUNC1(perms) == -1)
		return NULL;

	/* calculate user mode */
	if (sb->st_mode & S_IRUSR)
		if (FUNC0(perms, ACL_READ) == -1)
			return NULL;
	if (sb->st_mode & S_IWUSR)
		if (FUNC0(perms, ACL_WRITE) == -1)
			return NULL;
	if (sb->st_mode & S_IXUSR)
		if (FUNC0(perms, ACL_EXECUTE) == -1)
			return NULL;
	if (FUNC5(entry, perms) == -1)
		return NULL;

	/* Second entry: ACL_GROUP_OBJ */
	if (FUNC2(&acl, &entry) == -1)
		return NULL;
	if (FUNC6(entry, ACL_GROUP_OBJ) == -1)
		return NULL;

	if (FUNC3(entry, &perms) == -1)
		return NULL;
	if (FUNC1(perms) == -1)
		return NULL;

	/* calculate group mode */
	if (sb->st_mode & S_IRGRP)
		if (FUNC0(perms, ACL_READ) == -1)
			return NULL;
	if (sb->st_mode & S_IWGRP)
		if (FUNC0(perms, ACL_WRITE) == -1)
			return NULL;
	if (sb->st_mode & S_IXGRP)
		if (FUNC0(perms, ACL_EXECUTE) == -1)
			return NULL;
	if (FUNC5(entry, perms) == -1)
		return NULL;

	/* Third entry: ACL_OTHER */
	if (FUNC2(&acl, &entry) == -1)
		return NULL;
	if (FUNC6(entry, ACL_OTHER) == -1)
		return NULL;

	if (FUNC3(entry, &perms) == -1)
		return NULL;
	if (FUNC1(perms) == -1)
		return NULL;

	/* calculate other mode */
	if (sb->st_mode & S_IROTH)
		if (FUNC0(perms, ACL_READ) == -1)
			return NULL;
	if (sb->st_mode & S_IWOTH)
		if (FUNC0(perms, ACL_WRITE) == -1)
			return NULL;
	if (sb->st_mode & S_IXOTH)
		if (FUNC0(perms, ACL_EXECUTE) == -1)
			return NULL;
	if (FUNC5(entry, perms) == -1)
		return NULL;

	return(acl);
}