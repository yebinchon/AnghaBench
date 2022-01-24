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
struct nfs_server {int flags; } ;
struct nfs_fsinfo {int dummy; } ;
struct nfs_fh {int dummy; } ;

/* Variables and functions */
 int NFS4ERR_WRONGSEC ; 
 int NFS_MOUNT_SECFLAVOUR ; 
 int FUNC0 (struct nfs_server*,struct nfs_fh*,struct nfs_fsinfo*) ; 
 int FUNC1 (struct nfs_server*,struct nfs_fh*,struct nfs_fsinfo*) ; 
 int FUNC2 (struct nfs_server*,struct nfs_fh*,struct nfs_fsinfo*) ; 
 int FUNC3 (int) ; 
 int FUNC4 (struct nfs_server*,struct nfs_fh*) ; 

__attribute__((used)) static int FUNC5(struct nfs_server *server, struct nfs_fh *fhandle,
			      struct nfs_fsinfo *info)
{
	int status = FUNC2(server, fhandle, info);
	if ((status == -NFS4ERR_WRONGSEC) && !(server->flags & NFS_MOUNT_SECFLAVOUR))
		/*
		 * A status of -NFS4ERR_WRONGSEC will be mapped to -EPERM
		 * by nfs4_map_errors() as this function exits.
		 */
		status = FUNC1(server, fhandle, info);
	if (status == 0)
		status = FUNC4(server, fhandle);
	if (status == 0)
		status = FUNC0(server, fhandle, info);
	return FUNC3(status);
}