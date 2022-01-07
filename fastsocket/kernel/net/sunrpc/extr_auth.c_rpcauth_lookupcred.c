
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rpc_cred {int dummy; } ;
struct rpc_auth {TYPE_1__* au_ops; } ;
struct cred {int group_info; int fsgid; int fsuid; } ;
struct auth_cred {int group_info; int gid; int uid; } ;
typedef int acred ;
struct TYPE_2__ {struct rpc_cred* (* lookup_cred ) (struct rpc_auth*,struct auth_cred*,int) ;int au_name; } ;


 struct cred* current_cred () ;
 int dprintk (char*,int ) ;
 int get_group_info (int ) ;
 int memset (struct auth_cred*,int ,int) ;
 int put_group_info (int ) ;
 struct rpc_cred* stub1 (struct rpc_auth*,struct auth_cred*,int) ;

struct rpc_cred *
rpcauth_lookupcred(struct rpc_auth *auth, int flags)
{
 struct auth_cred acred;
 struct rpc_cred *ret;
 const struct cred *cred = current_cred();

 dprintk("RPC:       looking up %s cred\n",
  auth->au_ops->au_name);

 memset(&acred, 0, sizeof(acred));
 acred.uid = cred->fsuid;
 acred.gid = cred->fsgid;
 acred.group_info = get_group_info(((struct cred *)cred)->group_info);

 ret = auth->au_ops->lookup_cred(auth, &acred, flags);
 put_group_info(acred.group_info);
 return ret;
}
