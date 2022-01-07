
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int gid; int uid; } ;
struct ncp_server {TYPE_1__ m; } ;
struct ncp_entry_info {int i; } ;
struct inode {int i_nlink; int i_gid; int i_uid; int i_mode; } ;
struct TYPE_4__ {scalar_t__ flags; } ;


 int DDPRINTK (char*,int ) ;
 TYPE_2__* NCP_FINFO (struct inode*) ;
 struct ncp_server* NCP_SERVER (struct inode*) ;
 int ncp_update_attrs (struct inode*,struct ncp_entry_info*) ;
 int ncp_update_dates (struct inode*,int *) ;
 int ncp_update_inode (struct inode*,struct ncp_entry_info*) ;

__attribute__((used)) static void ncp_set_attr(struct inode *inode, struct ncp_entry_info *nwinfo)
{
 struct ncp_server *server = NCP_SERVER(inode);

 NCP_FINFO(inode)->flags = 0;

 ncp_update_attrs(inode, nwinfo);

 DDPRINTK("ncp_read_inode: inode->i_mode = %u\n", inode->i_mode);

 inode->i_nlink = 1;
 inode->i_uid = server->m.uid;
 inode->i_gid = server->m.gid;

 ncp_update_dates(inode, &nwinfo->i);
 ncp_update_inode(inode, nwinfo);
}
