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

/* Variables and functions */
 int /*<<< orphan*/  autofs4_fill_super ; 
 int FUNC0 (struct file_system_type*,int,void*,int /*<<< orphan*/ ,struct vfsmount*) ; 

__attribute__((used)) static int FUNC1(struct file_system_type *fs_type,
	int flags, const char *dev_name, void *data, struct vfsmount *mnt)
{
	return FUNC0(fs_type, flags, data, autofs4_fill_super, mnt);
}