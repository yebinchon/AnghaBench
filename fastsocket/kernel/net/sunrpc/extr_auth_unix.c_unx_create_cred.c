
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rpc_cred {unsigned long cr_flags; } ;
struct unx_cred {struct rpc_cred uc_base; int * uc_gids; int uc_gid; } ;
struct rpc_auth {int dummy; } ;
struct auth_cred {TYPE_1__* group_info; int gid; int uid; } ;
struct TYPE_2__ {unsigned int ngroups; } ;


 int ENOMEM ;
 struct rpc_cred* ERR_PTR (int ) ;
 int GFP_NOFS ;
 int GROUP_AT (TYPE_1__*,unsigned int) ;
 unsigned int NFS_NGROUPS ;
 int NOGROUP ;
 unsigned long RPCAUTH_CRED_UPTODATE ;
 int dprintk (char*,int ,int ) ;
 struct unx_cred* kmalloc (int,int ) ;
 int rpcauth_init_cred (struct rpc_cred*,struct auth_cred*,struct rpc_auth*,int *) ;
 int unix_credops ;

__attribute__((used)) static struct rpc_cred *
unx_create_cred(struct rpc_auth *auth, struct auth_cred *acred, int flags)
{
 struct unx_cred *cred;
 unsigned int groups = 0;
 unsigned int i;

 dprintk("RPC:       allocating UNIX cred for uid %d gid %d\n",
   acred->uid, acred->gid);

 if (!(cred = kmalloc(sizeof(*cred), GFP_NOFS)))
  return ERR_PTR(-ENOMEM);

 rpcauth_init_cred(&cred->uc_base, acred, auth, &unix_credops);
 cred->uc_base.cr_flags = 1UL << RPCAUTH_CRED_UPTODATE;

 if (acred->group_info != ((void*)0))
  groups = acred->group_info->ngroups;
 if (groups > NFS_NGROUPS)
  groups = NFS_NGROUPS;

 cred->uc_gid = acred->gid;
 for (i = 0; i < groups; i++)
  cred->uc_gids[i] = GROUP_AT(acred->group_info, i);
 if (i < NFS_NGROUPS)
  cred->uc_gids[i] = NOGROUP;

 return &cred->uc_base;
}
