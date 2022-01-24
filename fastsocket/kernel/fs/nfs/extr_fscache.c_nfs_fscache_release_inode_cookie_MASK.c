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
struct nfs_inode {int /*<<< orphan*/ * fscache; } ;
struct inode {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FSCACHE ; 
 struct nfs_inode* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,struct nfs_inode*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC3(struct inode *inode)
{
	struct nfs_inode *nfsi = FUNC0(inode);

	FUNC1(FSCACHE, "NFS: clear cookie (0x%p/0x%p)\n",
		 nfsi, nfsi->fscache);

	FUNC2(nfsi->fscache, 0);
	nfsi->fscache = NULL;
}