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
struct seq_operations {int dummy; } ;
struct seq_net_private {struct net* net; } ;
struct net {int dummy; } ;
struct inode {int dummy; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOMEM ; 
 int ENXIO ; 
 struct seq_net_private* FUNC1 (struct file*,struct seq_operations const*,int) ; 
 struct net* FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct net*) ; 

int FUNC4(struct inode *ino, struct file *f,
		 const struct seq_operations *ops, int size)
{
	struct net *net;
	struct seq_net_private *p;

	FUNC0(size < sizeof(*p));

	net = FUNC2(ino);
	if (net == NULL)
		return -ENXIO;

	p = FUNC1(f, ops, size);
	if (p == NULL) {
		FUNC3(net);
		return -ENOMEM;
	}
#ifdef CONFIG_NET_NS
	p->net = net;
#endif
	return 0;
}