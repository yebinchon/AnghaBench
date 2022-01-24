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
struct vfsmount {struct dentry* mnt_root; } ;
struct qstr {char* name; void* len; } ;
struct dentry {int dummy; } ;
typedef  int pid_t ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int PROC_NUMBUF ; 
 int /*<<< orphan*/  FUNC0 (struct dentry*) ; 
 struct dentry* FUNC1 (struct dentry*,struct qstr*) ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC3 (struct dentry*) ; 
 void* FUNC4 (char*,int,char*,int) ; 
 void* FUNC5 (char*) ; 

__attribute__((used)) static void FUNC6(struct vfsmount *mnt, pid_t pid, pid_t tgid)
{
	struct dentry *dentry, *leader, *dir;
	char buf[PROC_NUMBUF];
	struct qstr name;

	name.name = buf;
	name.len = FUNC4(buf, sizeof(buf), "%d", pid);
	dentry = FUNC1(mnt->mnt_root, &name);
	if (dentry) {
		FUNC3(dentry);
		FUNC0(dentry);
		FUNC2(dentry);
	}

	name.name = buf;
	name.len = FUNC4(buf, sizeof(buf), "%d", tgid);
	leader = FUNC1(mnt->mnt_root, &name);
	if (!leader)
		goto out;

	name.name = "task";
	name.len = FUNC5(name.name);
	dir = FUNC1(leader, &name);
	if (!dir)
		goto out_put_leader;

	name.name = buf;
	name.len = FUNC4(buf, sizeof(buf), "%d", pid);
	dentry = FUNC1(dir, &name);
	if (dentry) {
		FUNC3(dentry);
		FUNC0(dentry);
		FUNC2(dentry);
	}

	FUNC2(dir);
out_put_leader:
	FUNC2(leader);
out:
	return;
}