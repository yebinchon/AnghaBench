
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rpc_cred {unsigned long cr_flags; } ;
struct rpc_auth {int dummy; } ;
struct TYPE_2__ {scalar_t__ machine_cred; int * group_info; int gid; int uid; } ;
struct generic_cred {struct rpc_cred gc_base; TYPE_1__ acred; } ;
struct auth_cred {int gid; int uid; scalar_t__ machine_cred; int * group_info; } ;


 int ENOMEM ;
 struct rpc_cred* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 unsigned long RPCAUTH_CRED_UPTODATE ;
 int dprintk (char*,char*,struct generic_cred*,int ,int ) ;
 int generic_auth ;
 int generic_credops ;
 int get_group_info (int *) ;
 struct generic_cred* kmalloc (int,int ) ;
 int rpcauth_init_cred (struct rpc_cred*,struct auth_cred*,int *,int *) ;

__attribute__((used)) static struct rpc_cred *
generic_create_cred(struct rpc_auth *auth, struct auth_cred *acred, int flags)
{
 struct generic_cred *gcred;

 gcred = kmalloc(sizeof(*gcred), GFP_KERNEL);
 if (gcred == ((void*)0))
  return ERR_PTR(-ENOMEM);

 rpcauth_init_cred(&gcred->gc_base, acred, &generic_auth, &generic_credops);
 gcred->gc_base.cr_flags = 1UL << RPCAUTH_CRED_UPTODATE;

 gcred->acred.uid = acred->uid;
 gcred->acred.gid = acred->gid;
 gcred->acred.group_info = acred->group_info;
 if (gcred->acred.group_info != ((void*)0))
  get_group_info(gcred->acred.group_info);
 gcred->acred.machine_cred = acred->machine_cred;

 dprintk("RPC:       allocated %s cred %p for uid %d gid %d\n",
   gcred->acred.machine_cred ? "machine" : "generic",
   gcred, acred->uid, acred->gid);
 return &gcred->gc_base;
}
