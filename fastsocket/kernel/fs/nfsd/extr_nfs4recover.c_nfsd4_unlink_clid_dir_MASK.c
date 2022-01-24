#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct dentry {TYPE_2__* d_inode; } ;
struct TYPE_4__ {struct dentry* dentry; } ;
struct TYPE_6__ {TYPE_1__ f_path; } ;
struct TYPE_5__ {int /*<<< orphan*/  i_mutex; } ;

/* Variables and functions */
 int ENOENT ; 
 scalar_t__ FUNC0 (struct dentry*) ; 
 int /*<<< orphan*/  I_MUTEX_PARENT ; 
 int FUNC1 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct dentry*) ; 
 struct dentry* FUNC4 (char*,struct dentry*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 TYPE_3__* rec_file ; 
 int FUNC7 (TYPE_2__*,struct dentry*) ; 

__attribute__((used)) static int
FUNC8(char *name, int namlen)
{
	struct dentry *dir, *dentry;
	int status;

	FUNC2("NFSD: nfsd4_unlink_clid_dir. name %.*s\n", namlen, name);

	dir = rec_file->f_path.dentry;
	FUNC5(&dir->d_inode->i_mutex, I_MUTEX_PARENT);
	dentry = FUNC4(name, dir, namlen);
	if (FUNC0(dentry)) {
		status = FUNC1(dentry);
		goto out_unlock;
	}
	status = -ENOENT;
	if (!dentry->d_inode)
		goto out;
	status = FUNC7(dir->d_inode, dentry);
out:
	FUNC3(dentry);
out_unlock:
	FUNC6(&dir->d_inode->i_mutex);
	return status;
}