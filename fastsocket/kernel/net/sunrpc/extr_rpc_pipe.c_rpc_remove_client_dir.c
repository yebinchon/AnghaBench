
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int dummy; } ;


 int rpc_clntdir_depopulate ;
 int rpc_rmdir_depopulate (struct dentry*,int ) ;

int rpc_remove_client_dir(struct dentry *dentry)
{
 return rpc_rmdir_depopulate(dentry, rpc_clntdir_depopulate);
}
