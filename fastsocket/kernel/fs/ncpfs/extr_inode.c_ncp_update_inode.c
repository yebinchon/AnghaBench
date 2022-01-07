
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int entryName; int attributes; } ;
struct ncp_entry_info {TYPE_1__ i; int file_handle; int access; } ;
struct inode {int dummy; } ;
struct TYPE_4__ {int dirEntNum; int volNumber; int file_handle; int access; int nwattr; } ;


 int DPRINTK (char*,int ,int ,int ) ;
 TYPE_2__* NCP_FINFO (struct inode*) ;
 int memcpy (int ,int ,int) ;
 int ncp_update_dirent (struct inode*,struct ncp_entry_info*) ;

void ncp_update_inode(struct inode *inode, struct ncp_entry_info *nwinfo)
{
 ncp_update_dirent(inode, nwinfo);
 NCP_FINFO(inode)->nwattr = nwinfo->i.attributes;
 NCP_FINFO(inode)->access = nwinfo->access;
 memcpy(NCP_FINFO(inode)->file_handle, nwinfo->file_handle,
   sizeof(nwinfo->file_handle));
 DPRINTK("ncp_update_inode: updated %s, volnum=%d, dirent=%u\n",
  nwinfo->i.entryName, NCP_FINFO(inode)->volNumber,
  NCP_FINFO(inode)->dirEntNum);
}
