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
struct nfs_server {int dummy; } ;
struct nfs_inode {int dummy; } ;
struct nfs_delegation {int dummy; } ;
struct inode {int dummy; } ;

/* Variables and functions */
 struct nfs_inode* FUNC0 (struct inode*) ; 
 struct nfs_server* FUNC1 (struct inode*) ; 
 struct nfs_delegation* FUNC2 (struct nfs_inode*,struct nfs_delegation*,struct nfs_server*) ; 
 struct nfs_delegation* FUNC3 (struct nfs_inode*) ; 

__attribute__((used)) static struct nfs_delegation *
FUNC4(struct inode *inode)
{
	struct nfs_inode *nfsi = FUNC0(inode);
	struct nfs_server *server = FUNC1(inode);
	struct nfs_delegation *delegation;

	delegation = FUNC3(nfsi);
	if (delegation == NULL)
		return NULL;
	return FUNC2(nfsi, delegation, server);
}