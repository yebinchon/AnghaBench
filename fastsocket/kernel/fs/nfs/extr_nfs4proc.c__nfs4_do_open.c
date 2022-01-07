
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rpc_cred {int dummy; } ;
struct nfs_server {int dummy; } ;
struct nfs4_state_owner {int dummy; } ;
struct nfs4_state {int inode; } ;
struct TYPE_4__ {int f_attr; } ;
struct TYPE_3__ {int open_flags; scalar_t__ createmode; } ;
struct nfs4_opendata {TYPE_2__ o_res; TYPE_1__ o_arg; int state; } ;
struct inode {int dummy; } ;
struct iattr {int dummy; } ;
struct dentry {int * d_inode; } ;
typedef int fmode_t ;
typedef enum open_claim_type4 { ____Placeholder_open_claim_type4 } open_claim_type4 ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ NFS4_CREATE_GUARDED ;
 int NFS4_OPEN_CLAIM_FH ;
 int NFS4_OPEN_CLAIM_NULL ;
 struct nfs_server* NFS_SERVER (struct inode*) ;
 int O_EXCL ;
 int _nfs4_open_and_get_state (struct nfs4_opendata*,int ,int,struct nfs4_state**) ;
 int dprintk (char*) ;
 int nfs4_do_setattr (int ,struct rpc_cred*,int ,struct iattr*,struct nfs4_state*) ;
 int nfs4_exclusive_attrset (struct nfs4_opendata*,struct iattr*) ;
 int nfs4_get_open_state (int *,struct nfs4_state_owner*) ;
 struct nfs4_state_owner* nfs4_get_state_owner (struct nfs_server*,struct rpc_cred*) ;
 struct nfs4_opendata* nfs4_opendata_alloc (struct dentry*,struct nfs4_state_owner*,int ,int,struct iattr*,int,int ) ;
 int nfs4_opendata_put (struct nfs4_opendata*) ;
 int nfs4_put_state_owner (struct nfs4_state_owner*) ;
 int nfs4_recover_expired_lease (struct nfs_server*) ;
 int nfs4_return_incompatible_delegation (int *,int ) ;
 int nfs_fattr_init (int ) ;
 int nfs_post_op_update_inode (int ,int ) ;
 int nfs_setattr_update_inode (int ,struct iattr*) ;

__attribute__((used)) static int _nfs4_do_open(struct inode *dir, struct dentry *dentry, fmode_t fmode, int flags, struct iattr *sattr, struct rpc_cred *cred, struct nfs4_state **res)
{
 struct nfs4_state_owner *sp;
 struct nfs4_state *state = ((void*)0);
 struct nfs_server *server = NFS_SERVER(dir);
 struct nfs4_opendata *opendata;
 enum open_claim_type4 claim = NFS4_OPEN_CLAIM_NULL;
 int status;


 status = -ENOMEM;
 if (!(sp = nfs4_get_state_owner(server, cred))) {
  dprintk("nfs4_do_open: nfs4_get_state_owner failed!\n");
  goto out_err;
 }
 status = nfs4_recover_expired_lease(server);
 if (status != 0)
  goto err_put_state_owner;
 if (dentry->d_inode != ((void*)0))
  nfs4_return_incompatible_delegation(dentry->d_inode, fmode);
 status = -ENOMEM;
 if (dentry->d_inode)
  claim = NFS4_OPEN_CLAIM_FH;
 opendata = nfs4_opendata_alloc(dentry, sp, fmode, flags, sattr,
   claim, GFP_KERNEL);
 if (opendata == ((void*)0))
  goto err_put_state_owner;

 if (dentry->d_inode != ((void*)0))
  opendata->state = nfs4_get_open_state(dentry->d_inode, sp);

 status = _nfs4_open_and_get_state(opendata, fmode, flags, &state);
 if (status != 0)
  goto err_opendata_put;

 if ((opendata->o_arg.open_flags & O_EXCL) &&
     (opendata->o_arg.createmode != NFS4_CREATE_GUARDED)) {
  nfs4_exclusive_attrset(opendata, sattr);

  nfs_fattr_init(opendata->o_res.f_attr);
  status = nfs4_do_setattr(state->inode, cred,
    opendata->o_res.f_attr, sattr,
    state);
  if (status == 0)
   nfs_setattr_update_inode(state->inode, sattr);
  nfs_post_op_update_inode(state->inode, opendata->o_res.f_attr);
 }
 nfs4_opendata_put(opendata);
 nfs4_put_state_owner(sp);
 *res = state;
 return 0;
err_opendata_put:
 nfs4_opendata_put(opendata);
err_put_state_owner:
 nfs4_put_state_owner(sp);
out_err:
 *res = ((void*)0);
 return status;
}
