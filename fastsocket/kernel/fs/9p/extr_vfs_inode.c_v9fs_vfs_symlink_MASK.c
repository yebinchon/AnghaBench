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
struct inode {int /*<<< orphan*/  i_ino; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;
struct dentry {TYPE_1__ d_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  P9_DEBUG_VFS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  S_IFLNK ; 
 int FUNC1 (struct inode*,struct dentry*,int /*<<< orphan*/ ,char const*) ; 

__attribute__((used)) static int
FUNC2(struct inode *dir, struct dentry *dentry, const char *symname)
{
	FUNC0(P9_DEBUG_VFS, " %lu,%s,%s\n", dir->i_ino,
					dentry->d_name.name, symname);

	return FUNC1(dir, dentry, S_IFLNK, symname);
}