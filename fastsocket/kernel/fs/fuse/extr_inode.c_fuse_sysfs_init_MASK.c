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

/* Variables and functions */
 int ENOMEM ; 
 void* connections_kobj ; 
 void* fs_kobj ; 
 void* fuse_kobj ; 
 void* FUNC0 (char*,void*) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 

__attribute__((used)) static int FUNC2(void)
{
	int err;

	fuse_kobj = FUNC0("fuse", fs_kobj);
	if (!fuse_kobj) {
		err = -ENOMEM;
		goto out_err;
	}

	connections_kobj = FUNC0("connections", fuse_kobj);
	if (!connections_kobj) {
		err = -ENOMEM;
		goto out_fuse_unregister;
	}

	return 0;

 out_fuse_unregister:
	FUNC1(fuse_kobj);
 out_err:
	return err;
}