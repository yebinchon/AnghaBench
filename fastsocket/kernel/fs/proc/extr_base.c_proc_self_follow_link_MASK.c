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
struct pid_namespace {int dummy; } ;
struct nameidata {int dummy; } ;
struct dentry {TYPE_1__* d_sb; } ;
typedef  int pid_t ;
struct TYPE_2__ {struct pid_namespace* s_fs_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOENT ; 
 int /*<<< orphan*/  ENOMEM ; 
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  current ; 
 char* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nameidata*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,struct pid_namespace*) ; 

__attribute__((used)) static void *FUNC5(struct dentry *dentry, struct nameidata *nd)
{
	struct pid_namespace *ns = dentry->d_sb->s_fs_info;
	pid_t tgid = FUNC4(current, ns);
	char *name = FUNC0(-ENOENT);
	if (tgid) {
		/* 11 for max length of signed int in decimal + NULL term */
		name = FUNC1(12, GFP_KERNEL);
		if (!name)
			name = FUNC0(-ENOMEM);
		else
			FUNC3(name, "%d", tgid);
	}
	FUNC2(nd, name);
	return NULL;
}