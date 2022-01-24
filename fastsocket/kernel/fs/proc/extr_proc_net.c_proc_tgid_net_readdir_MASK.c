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
struct net {int /*<<< orphan*/  proc_net; } ;
struct TYPE_4__ {TYPE_1__* dentry; } ;
struct file {TYPE_2__ f_path; } ;
typedef  int /*<<< orphan*/  filldir_t ;
struct TYPE_3__ {int /*<<< orphan*/  d_inode; } ;

/* Variables and functions */
 int EINVAL ; 
 struct net* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct file*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct net*) ; 

__attribute__((used)) static int FUNC3(struct file *filp, void *dirent,
		filldir_t filldir)
{
	int ret;
	struct net *net;

	ret = -EINVAL;
	net = FUNC0(filp->f_path.dentry->d_inode);
	if (net != NULL) {
		ret = FUNC1(net->proc_net, filp, dirent, filldir);
		FUNC2(net);
	}
	return ret;
}