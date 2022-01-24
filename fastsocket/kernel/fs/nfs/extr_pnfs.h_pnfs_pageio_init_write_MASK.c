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
struct nfs_pgio_completion_ops {int dummy; } ;
struct nfs_pageio_descriptor {int dummy; } ;
struct inode {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nfs_pageio_descriptor*,struct inode*,int,struct nfs_pgio_completion_ops const*) ; 

__attribute__((used)) static inline void FUNC1(struct nfs_pageio_descriptor *pgio, struct inode *inode, int ioflags,
					  const struct nfs_pgio_completion_ops *compl_ops)
{
	FUNC0(pgio, inode, ioflags, compl_ops);
}