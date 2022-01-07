
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ncp_server {int dummy; } ;
struct inode {int dummy; } ;
struct dentry {struct inode* d_inode; } ;
typedef int __u8 ;
typedef int __le32 ;
struct TYPE_2__ {int DosDirNum; int volNumber; } ;


 TYPE_1__* NCP_FINFO (struct inode*) ;
 int NW_NS_DOS ;
 int cpu_to_le16 (int) ;
 int ncp_DeleteNSEntry (struct ncp_server*,int,int ,int ,int *,int ,int ) ;

int
ncp_del_file_or_subdir2(struct ncp_server *server,
   struct dentry *dentry)
{
 struct inode *inode = dentry->d_inode;
 __u8 volnum;
 __le32 dirent;

 if (!inode) {
  return 0xFF;
 }
 volnum = NCP_FINFO(inode)->volNumber;
 dirent = NCP_FINFO(inode)->DosDirNum;
 return ncp_DeleteNSEntry(server, 1, volnum, dirent, ((void*)0), NW_NS_DOS, cpu_to_le16(0x8006));
}
