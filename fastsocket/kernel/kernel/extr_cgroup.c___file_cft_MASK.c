#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct file {TYPE_2__* f_dentry; } ;
struct cftype {int dummy; } ;
struct TYPE_4__ {TYPE_1__* d_inode; } ;
struct TYPE_3__ {int /*<<< orphan*/ * i_fop; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 struct cftype* FUNC0 (int /*<<< orphan*/ ) ; 
 struct cftype* FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  cgroup_file_operations ; 

__attribute__((used)) static inline struct cftype *FUNC2(struct file *file)
{
	if (file->f_dentry->d_inode->i_fop != &cgroup_file_operations)
		return FUNC0(-EINVAL);
	return FUNC1(file->f_dentry);
}