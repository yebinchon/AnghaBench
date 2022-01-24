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
struct nfs_pgio_completion_ops {int dummy; } ;
struct nfs_pageio_descriptor {int dummy; } ;
struct inode {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  rsize; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct nfs_pageio_descriptor*,struct inode*,int /*<<< orphan*/ *,struct nfs_pgio_completion_ops const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nfs_pageio_read_ops ; 

void FUNC2(struct nfs_pageio_descriptor *pgio,
			      struct inode *inode,
			      const struct nfs_pgio_completion_ops *compl_ops)
{
	FUNC1(pgio, inode, &nfs_pageio_read_ops, compl_ops,
			FUNC0(inode)->rsize, 0);
}