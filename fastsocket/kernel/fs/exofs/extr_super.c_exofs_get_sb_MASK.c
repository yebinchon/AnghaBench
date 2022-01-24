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
struct vfsmount {int dummy; } ;
struct file_system_type {int dummy; } ;
struct exofs_mountopt {char const* dev_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  exofs_fill_super ; 
 int FUNC0 (struct file_system_type*,int,struct exofs_mountopt*,int /*<<< orphan*/ ,struct vfsmount*) ; 
 int FUNC1 (void*,struct exofs_mountopt*) ; 

__attribute__((used)) static int FUNC2(struct file_system_type *type,
			  int flags, const char *dev_name,
			  void *data, struct vfsmount *mnt)
{
	struct exofs_mountopt opts;
	int ret;

	ret = FUNC1(data, &opts);
	if (ret)
		return ret;

	opts.dev_name = dev_name;
	return FUNC0(type, flags, &opts, exofs_fill_super, mnt);
}