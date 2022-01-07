
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_8__ ;
typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct nfs_delegation {int flags; } ;
struct nfs4_state {int inode; } ;
struct TYPE_10__ {scalar_t__ claim; int seqid; int fmode; } ;
struct TYPE_11__ {scalar_t__ delegation_type; int stateid; int fh; } ;
struct TYPE_12__ {int valid; } ;
struct nfs4_opendata {TYPE_2__ o_arg; TYPE_3__ o_res; TYPE_6__* owner; TYPE_5__ f_attr; TYPE_1__* dir; int rpc_done; } ;
struct inode {int dummy; } ;
struct TYPE_15__ {int cl_server; } ;
struct TYPE_14__ {int delegation; } ;
struct TYPE_13__ {int so_cred; } ;
struct TYPE_9__ {int d_sb; } ;


 int EAGAIN ;
 int ENOMEM ;
 struct nfs4_state* ERR_PTR (int) ;
 scalar_t__ IS_ERR (struct inode*) ;
 scalar_t__ NFS4_OPEN_CLAIM_DELEGATE_CUR ;
 int NFS_ATTR_FATTR ;
 TYPE_8__* NFS_CLIENT (struct inode*) ;
 int NFS_DELEGATION_NEED_RECLAIM ;
 TYPE_7__* NFS_I (struct inode*) ;
 int PTR_ERR (struct inode*) ;
 int iput (struct inode*) ;
 struct nfs4_state* nfs4_get_open_state (struct inode*,TYPE_6__*) ;
 struct nfs4_state* nfs4_try_open_cached (struct nfs4_opendata*) ;
 struct inode* nfs_fhget (int ,int *,TYPE_5__*) ;
 int nfs_inode_reclaim_delegation (int ,int ,TYPE_3__*) ;
 int nfs_inode_set_delegation (int ,int ,TYPE_3__*) ;
 int nfs_release_seqid (int ) ;
 int pr_err_ratelimited (char*,int ) ;
 struct nfs_delegation* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int update_open_stateid (struct nfs4_state*,int *,int *,int ) ;

__attribute__((used)) static struct nfs4_state *nfs4_opendata_to_nfs4_state(struct nfs4_opendata *data)
{
 struct inode *inode;
 struct nfs4_state *state = ((void*)0);
 struct nfs_delegation *delegation;
 int ret;

 if (!data->rpc_done) {
  state = nfs4_try_open_cached(data);
  goto out;
 }

 ret = -EAGAIN;
 if (!(data->f_attr.valid & NFS_ATTR_FATTR))
  goto err;
 inode = nfs_fhget(data->dir->d_sb, &data->o_res.fh, &data->f_attr);
 ret = PTR_ERR(inode);
 if (IS_ERR(inode))
  goto err;
 ret = -ENOMEM;
 state = nfs4_get_open_state(inode, data->owner);
 if (state == ((void*)0))
  goto err_put_inode;
 if (data->o_res.delegation_type != 0) {
  int delegation_flags = 0;

  rcu_read_lock();
  delegation = rcu_dereference(NFS_I(inode)->delegation);
  if (delegation)
   delegation_flags = delegation->flags;
  rcu_read_unlock();
  if (data->o_arg.claim == NFS4_OPEN_CLAIM_DELEGATE_CUR) {
   pr_err_ratelimited("NFS: Broken NFSv4 server %s is "
     "returning a delegation for "
     "OPEN(CLAIM_DELEGATE_CUR)\n",
     NFS_CLIENT(inode)->cl_server);
  } else if ((delegation_flags & 1UL<<NFS_DELEGATION_NEED_RECLAIM) == 0)
   nfs_inode_set_delegation(state->inode,
     data->owner->so_cred,
     &data->o_res);
  else
   nfs_inode_reclaim_delegation(state->inode,
     data->owner->so_cred,
     &data->o_res);
 }

 update_open_stateid(state, &data->o_res.stateid, ((void*)0),
   data->o_arg.fmode);
 iput(inode);
out:
 nfs_release_seqid(data->o_arg.seqid);
 return state;
err_put_inode:
 iput(inode);
err:
 return ERR_PTR(ret);
}
