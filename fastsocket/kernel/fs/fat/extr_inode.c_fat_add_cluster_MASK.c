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
struct inode {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct inode*,int*,int) ; 
 int FUNC1 (struct inode*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*,int) ; 

__attribute__((used)) static int FUNC3(struct inode *inode)
{
	int err, cluster;

	err = FUNC0(inode, &cluster, 1);
	if (err)
		return err;
	/* FIXME: this cluster should be added after data of this
	 * cluster is writed */
	err = FUNC1(inode, cluster, 1);
	if (err)
		FUNC2(inode, cluster);
	return err;
}