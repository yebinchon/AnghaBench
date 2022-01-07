
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_clnt {int dummy; } ;
struct qstr {int dummy; } ;
struct dentry {int dummy; } ;


 int S_IRUGO ;
 int S_IXUGO ;
 int rpc_clntdir_populate ;
 struct dentry* rpc_mkdir_populate (struct dentry*,struct qstr*,int,int *,int ,struct rpc_clnt*) ;

struct dentry *rpc_create_client_dir(struct dentry *dentry,
       struct qstr *name,
       struct rpc_clnt *rpc_client)
{
 return rpc_mkdir_populate(dentry, name, S_IRUGO | S_IXUGO, ((void*)0),
   rpc_clntdir_populate, rpc_client);
}
