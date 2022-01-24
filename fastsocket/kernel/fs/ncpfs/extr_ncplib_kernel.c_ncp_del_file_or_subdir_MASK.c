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
struct ncp_server {scalar_t__* name_space; } ;
struct inode {int dummy; } ;
typedef  size_t __u8 ;
typedef  int /*<<< orphan*/  __le32 ;
struct TYPE_2__ {size_t volNumber; int /*<<< orphan*/  dirEntNum; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct inode*) ; 
 scalar_t__ NW_NS_DOS ; 
 scalar_t__ NW_NS_NFS ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (struct ncp_server*,int,size_t,int /*<<< orphan*/ ,char*,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct ncp_server*,size_t,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 

int
FUNC4(struct ncp_server *server,
		       struct inode *dir, char *name)
{
	__u8  volnum = FUNC0(dir)->volNumber;
	__le32 dirent = FUNC0(dir)->dirEntNum;

#ifdef CONFIG_NCPFS_NFS_NS
	if (server->name_space[volnum]==NW_NS_NFS)
 	{
 		int result;
 
 		result=ncp_obtain_DOS_dir_base(server, volnum, dirent, name, &dirent);
 		if (result) return result;
 		return ncp_DeleteNSEntry(server, 1, volnum, dirent, NULL, NW_NS_DOS, cpu_to_le16(0x8006));
 	}
 	else
#endif	/* CONFIG_NCPFS_NFS_NS */
 		return FUNC2(server, 1, volnum, dirent, name, server->name_space[volnum], FUNC1(0x8006));
}