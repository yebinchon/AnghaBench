
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct svc_rqst {int dummy; } ;
struct nfsd4_open_downgrade {scalar_t__ od_stateowner; int od_stateid; int od_share_deny; int od_share_access; int od_seqid; } ;
struct TYPE_6__ {TYPE_2__* fh_dentry; } ;
struct nfsd4_compound_state {scalar_t__ replay_owner; int minorversion; TYPE_3__ current_fh; } ;
struct nfs4_stateid {int st_access_bmap; int st_deny_bmap; int st_stateid; } ;
typedef int stateid_t ;
typedef int __be32 ;
struct TYPE_4__ {int name; scalar_t__ len; } ;
struct TYPE_5__ {TYPE_1__ d_name; } ;


 int OPEN_STATE ;
 int access_valid (int ,int ) ;
 int deny_valid (int ) ;
 int dprintk (char*,int,int ) ;
 int memcpy (int *,int *,int) ;
 int nfs4_file_downgrade (struct nfs4_stateid*,int ) ;
 int nfs4_get_stateowner (scalar_t__) ;
 int nfs4_lock_state () ;
 int nfs4_preprocess_seqid_op (struct nfsd4_compound_state*,int ,int *,int ,scalar_t__*,struct nfs4_stateid**,int *) ;
 int nfs4_unlock_state () ;
 int nfs_ok ;
 int nfserr_inval ;
 int reset_union_bmap_deny (int ,int*) ;
 int test_bit (int ,int*) ;
 int update_stateid (int *) ;

__be32
nfsd4_open_downgrade(struct svc_rqst *rqstp,
       struct nfsd4_compound_state *cstate,
       struct nfsd4_open_downgrade *od)
{
 __be32 status;
 struct nfs4_stateid *stp;

 dprintk("NFSD: nfsd4_open_downgrade on file %.*s\n",
   (int)cstate->current_fh.fh_dentry->d_name.len,
   cstate->current_fh.fh_dentry->d_name.name);

 if (!access_valid(od->od_share_access, cstate->minorversion)
   || !deny_valid(od->od_share_deny))
  return nfserr_inval;

 nfs4_lock_state();
 if ((status = nfs4_preprocess_seqid_op(cstate,
     od->od_seqid,
     &od->od_stateid,
     OPEN_STATE,
     &od->od_stateowner, &stp, ((void*)0))))
  goto out;

 status = nfserr_inval;
 if (!test_bit(od->od_share_access, &stp->st_access_bmap)) {
  dprintk("NFSD:access not a subset current bitmap: 0x%lx, input access=%08x\n",
   stp->st_access_bmap, od->od_share_access);
  goto out;
 }
 if (!test_bit(od->od_share_deny, &stp->st_deny_bmap)) {
  dprintk("NFSD:deny not a subset current bitmap: 0x%lx, input deny=%08x\n",
   stp->st_deny_bmap, od->od_share_deny);
  goto out;
 }
 nfs4_file_downgrade(stp, od->od_share_access);

 reset_union_bmap_deny(od->od_share_deny, &stp->st_deny_bmap);

 update_stateid(&stp->st_stateid);
 memcpy(&od->od_stateid, &stp->st_stateid, sizeof(stateid_t));
 status = nfs_ok;
out:
 if (od->od_stateowner) {
  nfs4_get_stateowner(od->od_stateowner);
  cstate->replay_owner = od->od_stateowner;
 }
 nfs4_unlock_state();
 return status;
}
