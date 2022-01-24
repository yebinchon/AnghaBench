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
struct pnfs_layoutdriver_type {int /*<<< orphan*/  pg_write_ops; } ;
struct nfs_server {int /*<<< orphan*/  wsize; struct pnfs_layoutdriver_type* pnfs_curr_ld; } ;
struct nfs_pgio_completion_ops {int dummy; } ;
struct nfs_pageio_descriptor {int dummy; } ;
struct inode {int dummy; } ;

/* Variables and functions */
 struct nfs_server* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct nfs_pageio_descriptor*,struct inode*,int /*<<< orphan*/ ,struct nfs_pgio_completion_ops const*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct nfs_pageio_descriptor*,struct inode*,int,struct nfs_pgio_completion_ops const*) ; 

void
FUNC3(struct nfs_pageio_descriptor *pgio, struct inode *inode,
		       int ioflags,
		       const struct nfs_pgio_completion_ops *compl_ops)
{
	struct nfs_server *server = FUNC0(inode);
	struct pnfs_layoutdriver_type *ld = server->pnfs_curr_ld;

	if (ld == NULL)
		FUNC2(pgio, inode, ioflags, compl_ops);
	else
		FUNC1(pgio, inode, ld->pg_write_ops, compl_ops, server->wsize, ioflags);
}