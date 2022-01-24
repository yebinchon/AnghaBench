#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  name; } ;
struct dentry {TYPE_2__* d_inode; TYPE_1__ d_name; } ;
struct TYPE_7__ {int /*<<< orphan*/  i_mode; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC3 (struct dentry*,struct dentry*) ; 
 int /*<<< orphan*/  FUNC4 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,TYPE_2__*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct dentry*) ; 
 int /*<<< orphan*/  FUNC6 (char const*) ; 
 char* FUNC7 (int /*<<< orphan*/ ) ; 
 struct dentry* FUNC8 (struct dentry*,struct dentry*) ; 
 struct dentry* FUNC9 (char const*,struct dentry*,int /*<<< orphan*/ ) ; 
 int FUNC10 (TYPE_2__*,struct dentry*,TYPE_2__*,struct dentry*) ; 
 int /*<<< orphan*/  FUNC11 (char const*) ; 
 int /*<<< orphan*/  FUNC12 (struct dentry*,struct dentry*) ; 

struct dentry *FUNC13(struct dentry *old_dir, struct dentry *old_dentry,
		struct dentry *new_dir, const char *new_name)
{
	int error;
	struct dentry *dentry = NULL, *trap;
	const char *old_name;

	trap = FUNC8(new_dir, old_dir);
	/* Source or destination directories don't exist? */
	if (!old_dir->d_inode || !new_dir->d_inode)
		goto exit;
	/* Source does not exist, cyclic rename, or mountpoint? */
	if (!old_dentry->d_inode || old_dentry == trap ||
	    FUNC2(old_dentry))
		goto exit;
	dentry = FUNC9(new_name, new_dir, FUNC11(new_name));
	/* Lookup failed, cyclic rename or target exists? */
	if (FUNC0(dentry) || dentry == trap || dentry->d_inode)
		goto exit;

	old_name = FUNC7(old_dentry->d_name.name);

	error = FUNC10(old_dir->d_inode, old_dentry, new_dir->d_inode,
		dentry);
	if (error) {
		FUNC6(old_name);
		goto exit;
	}
	FUNC3(old_dentry, dentry);
	FUNC5(old_dir->d_inode, new_dir->d_inode, old_name,
		old_dentry->d_name.name, FUNC1(old_dentry->d_inode->i_mode),
		NULL, old_dentry);
	FUNC6(old_name);
	FUNC12(new_dir, old_dir);
	FUNC4(dentry);
	return old_dentry;
exit:
	if (dentry && !FUNC0(dentry))
		FUNC4(dentry);
	FUNC12(new_dir, old_dir);
	return NULL;
}