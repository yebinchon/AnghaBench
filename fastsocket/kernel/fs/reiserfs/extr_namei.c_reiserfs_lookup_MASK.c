#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct reiserfs_dir_entry {int /*<<< orphan*/  de_dir_id; int /*<<< orphan*/ * de_gen_number_bit_string; } ;
struct nameidata {int dummy; } ;
struct inode {TYPE_2__* i_sb; int /*<<< orphan*/  i_flags; } ;
struct TYPE_5__ {scalar_t__ len; int /*<<< orphan*/  name; } ;
struct dentry {TYPE_1__ d_name; } ;
struct cpu_key {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  s_blocksize; } ;

/* Variables and functions */
 int /*<<< orphan*/  EACCES ; 
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  ENAMETOOLONG ; 
 struct dentry* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int IO_ERROR ; 
 scalar_t__ FUNC2 (struct inode*) ; 
 scalar_t__ FUNC3 (struct inode*) ; 
 int NAME_FOUND ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_PRIVATE ; 
 struct dentry* FUNC5 (struct inode*,struct dentry*) ; 
 int /*<<< orphan*/  path_to_entry ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (struct inode*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,struct reiserfs_dir_entry*) ; 
 struct inode* FUNC8 (TYPE_2__*,struct cpu_key*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 

__attribute__((used)) static struct dentry *FUNC11(struct inode *dir, struct dentry *dentry,
				      struct nameidata *nd)
{
	int retval;
	struct inode *inode = NULL;
	struct reiserfs_dir_entry de;
	FUNC1(path_to_entry);

	if (FUNC4(dir->i_sb->s_blocksize) < dentry->d_name.len)
		return FUNC0(-ENAMETOOLONG);

	FUNC9(dir->i_sb);
	de.de_gen_number_bit_string = NULL;
	retval =
	    FUNC7(dir, dentry->d_name.name, dentry->d_name.len,
				&path_to_entry, &de);
	FUNC6(&path_to_entry);
	if (retval == NAME_FOUND) {
		inode = FUNC8(dir->i_sb,
				      (struct cpu_key *)&(de.de_dir_id));
		if (!inode || FUNC2(inode)) {
			FUNC10(dir->i_sb);
			return FUNC0(-EACCES);
		}

		/* Propagate the private flag so we know we're
		 * in the priv tree */
		if (FUNC3(dir))
			inode->i_flags |= S_PRIVATE;
	}
	FUNC10(dir->i_sb);
	if (retval == IO_ERROR) {
		return FUNC0(-EIO);
	}

	return FUNC5(inode, dentry);
}