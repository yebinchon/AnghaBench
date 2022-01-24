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
struct nfs_server {int dummy; } ;
struct inode {int dummy; } ;
struct TYPE_2__ {int cache_validity; } ;

/* Variables and functions */
 int ESTALE ; 
 TYPE_1__* FUNC0 (struct inode*) ; 
 int NFS_INO_INVALID_ATTR ; 
 scalar_t__ FUNC1 (struct inode*) ; 
 int FUNC2 (struct nfs_server*,struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 

int FUNC4(struct nfs_server *server, struct inode *inode)
{
	if (!(FUNC0(inode)->cache_validity & NFS_INO_INVALID_ATTR)
			&& !FUNC3(inode))
		return FUNC1(inode) ? -ESTALE : 0;
	return FUNC2(server, inode);
}