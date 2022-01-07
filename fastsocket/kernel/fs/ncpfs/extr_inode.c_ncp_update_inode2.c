
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int attributes; } ;
struct ncp_entry_info {TYPE_1__ i; } ;
struct inode {int dummy; } ;
struct TYPE_4__ {int nwattr; int opened; scalar_t__ flags; } ;


 TYPE_2__* NCP_FINFO (struct inode*) ;
 int atomic_read (int *) ;
 int ncp_update_attrs (struct inode*,struct ncp_entry_info*) ;
 int ncp_update_dates (struct inode*,TYPE_1__*) ;
 int ncp_update_dirent (struct inode*,struct ncp_entry_info*) ;

void ncp_update_inode2(struct inode* inode, struct ncp_entry_info *nwinfo)
{
 NCP_FINFO(inode)->flags = 0;
 if (!atomic_read(&NCP_FINFO(inode)->opened)) {
  NCP_FINFO(inode)->nwattr = nwinfo->i.attributes;
  ncp_update_attrs(inode, nwinfo);
 }

 ncp_update_dates(inode, &nwinfo->i);
 ncp_update_dirent(inode, nwinfo);
}
