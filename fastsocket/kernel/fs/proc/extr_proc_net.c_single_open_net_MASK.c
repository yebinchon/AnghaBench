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
struct net {int dummy; } ;
struct inode {int dummy; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int ENXIO ; 
 struct net* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct net*) ; 
 int FUNC2 (struct file*,int (*) (struct seq_file*,void*),struct net*) ; 

int FUNC3(struct inode *inode, struct file *file,
		int (*show)(struct seq_file *, void *))
{
	int err;
	struct net *net;

	err = -ENXIO;
	net = FUNC0(inode);
	if (net == NULL)
		goto err_net;

	err = FUNC2(file, show, net);
	if (err < 0)
		goto err_open;

	return 0;

err_open:
	FUNC1(net);
err_net:
	return err;
}