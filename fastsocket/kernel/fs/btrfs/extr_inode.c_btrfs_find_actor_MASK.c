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
struct inode {int dummy; } ;
struct btrfs_iget_args {scalar_t__ ino; scalar_t__ root; } ;
struct TYPE_2__ {scalar_t__ root; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct inode*) ; 
 scalar_t__ FUNC1 (struct inode*) ; 

__attribute__((used)) static int FUNC2(struct inode *inode, void *opaque)
{
	struct btrfs_iget_args *args = opaque;
	return args->ino == FUNC1(inode) &&
		args->root == FUNC0(inode)->root;
}