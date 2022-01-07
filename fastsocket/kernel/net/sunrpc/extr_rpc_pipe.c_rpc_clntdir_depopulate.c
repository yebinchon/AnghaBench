
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int dummy; } ;


 int RPCAUTH_EOF ;
 int RPCAUTH_info ;
 int authfiles ;
 int rpc_depopulate (struct dentry*,int ,int ,int ) ;

__attribute__((used)) static void rpc_clntdir_depopulate(struct dentry *dentry)
{
 rpc_depopulate(dentry, authfiles, RPCAUTH_info, RPCAUTH_EOF);
}
