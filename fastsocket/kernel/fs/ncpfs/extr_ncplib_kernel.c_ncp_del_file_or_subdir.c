
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ncp_server {scalar_t__* name_space; } ;
struct inode {int dummy; } ;
typedef size_t __u8 ;
typedef int __le32 ;
struct TYPE_2__ {size_t volNumber; int dirEntNum; } ;


 TYPE_1__* NCP_FINFO (struct inode*) ;
 scalar_t__ NW_NS_DOS ;
 scalar_t__ NW_NS_NFS ;
 int cpu_to_le16 (int) ;
 int ncp_DeleteNSEntry (struct ncp_server*,int,size_t,int ,char*,scalar_t__,int ) ;
 int ncp_obtain_DOS_dir_base (struct ncp_server*,size_t,int ,char*,int *) ;

int
ncp_del_file_or_subdir(struct ncp_server *server,
         struct inode *dir, char *name)
{
 __u8 volnum = NCP_FINFO(dir)->volNumber;
 __le32 dirent = NCP_FINFO(dir)->dirEntNum;
   return ncp_DeleteNSEntry(server, 1, volnum, dirent, name, server->name_space[volnum], cpu_to_le16(0x8006));
}
