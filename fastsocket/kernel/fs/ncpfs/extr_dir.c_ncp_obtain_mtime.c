
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct nw_info_struct {int modifyDate; int modifyTime; } ;
struct ncp_server {int dummy; } ;
struct inode {int dummy; } ;
struct dentry {struct inode* d_inode; } ;


 struct ncp_server* NCP_SERVER (struct inode*) ;
 int ncp_conn_valid (struct ncp_server*) ;
 int ncp_date_dos2unix (int ,int ) ;
 scalar_t__ ncp_is_server_root (struct inode*) ;
 scalar_t__ ncp_obtain_info (struct ncp_server*,struct inode*,int *,struct nw_info_struct*) ;

__attribute__((used)) static time_t ncp_obtain_mtime(struct dentry *dentry)
{
 struct inode *inode = dentry->d_inode;
 struct ncp_server *server = NCP_SERVER(inode);
 struct nw_info_struct i;

 if (!ncp_conn_valid(server) || ncp_is_server_root(inode))
  return 0;

 if (ncp_obtain_info(server, inode, ((void*)0), &i))
  return 0;

 return ncp_date_dos2unix(i.modifyTime, i.modifyDate);
}
