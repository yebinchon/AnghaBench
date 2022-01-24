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
struct net {int /*<<< orphan*/  proc_net; } ;
struct nameidata {int dummy; } ;
struct inode {int dummy; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOENT ; 
 struct dentry* FUNC0 (int /*<<< orphan*/ ) ; 
 struct net* FUNC1 (struct inode*) ; 
 struct dentry* FUNC2 (int /*<<< orphan*/ ,struct inode*,struct dentry*) ; 
 int /*<<< orphan*/  FUNC3 (struct net*) ; 

__attribute__((used)) static struct dentry *FUNC4(struct inode *dir,
		struct dentry *dentry, struct nameidata *nd)
{
	struct dentry *de;
	struct net *net;

	de = FUNC0(-ENOENT);
	net = FUNC1(dir);
	if (net != NULL) {
		de = FUNC2(net->proc_net, dir, dentry);
		FUNC3(net);
	}
	return de;
}