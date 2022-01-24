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
struct dentry {TYPE_1__* d_inode; } ;
struct TYPE_2__ {int /*<<< orphan*/  i_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  I_MUTEX_PARENT ; 
 struct dentry* FUNC0 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct dentry *FUNC2(struct dentry *dentry)
{
	struct dentry *dir;

	dir = FUNC0(dentry);
	FUNC1(&(dir->d_inode->i_mutex), I_MUTEX_PARENT);
	return dir;
}