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
struct vfsmount {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; scalar_t__ len; } ;
struct dentry {TYPE_1__ d_name; } ;
struct autofs_info {int /*<<< orphan*/  last_used; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct dentry*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dentry*,unsigned long,int) ; 
 struct autofs_info* FUNC2 (struct dentry*) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC3 (struct vfsmount*) ; 

__attribute__((used)) static int FUNC4(struct vfsmount *mnt,
				struct dentry *top,
				unsigned long timeout,
				int do_now)
{
	FUNC0("top %p %.*s",
		top, (int) top->d_name.len, top->d_name.name);

	/* If it's busy update the expiry counters */
	if (!FUNC3(mnt)) {
		struct autofs_info *ino = FUNC2(top);
		if (ino)
			ino->last_used = jiffies;
		return 1;
	}

	/* Timeout of a direct mount is determined by its top dentry */
	if (!FUNC1(top, timeout, do_now))
		return 1;

	return 0;
}