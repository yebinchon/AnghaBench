
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct svc_rqst {int dummy; } ;
struct TYPE_9__ {TYPE_2__* fh_dentry; } ;
struct nfsd4_compound_state {TYPE_4__* replay_owner; TYPE_3__ current_fh; } ;
struct nfsd4_close {TYPE_4__* cl_stateowner; int cl_stateid; int cl_seqid; } ;
struct nfs4_stateid {int st_stateid; } ;
typedef int stateid_t ;
typedef int __be32 ;
struct TYPE_10__ {int so_stateids; } ;
struct TYPE_7__ {int name; scalar_t__ len; } ;
struct TYPE_8__ {TYPE_1__ d_name; } ;


 int CLOSE_STATE ;
 int OPEN_STATE ;
 int dprintk (char*,int,int ) ;
 scalar_t__ list_empty (int *) ;
 int memcpy (int *,int *,int) ;
 int move_to_close_lru (TYPE_4__*) ;
 int nfs4_get_stateowner (TYPE_4__*) ;
 int nfs4_lock_state () ;
 int nfs4_preprocess_seqid_op (struct nfsd4_compound_state*,int ,int *,int,TYPE_4__**,struct nfs4_stateid**,int *) ;
 int nfs4_unlock_state () ;
 int nfs_ok ;
 int release_open_stateid (struct nfs4_stateid*) ;
 int update_stateid (int *) ;

__be32
nfsd4_close(struct svc_rqst *rqstp, struct nfsd4_compound_state *cstate,
     struct nfsd4_close *close)
{
 __be32 status;
 struct nfs4_stateid *stp;

 dprintk("NFSD: nfsd4_close on file %.*s\n",
   (int)cstate->current_fh.fh_dentry->d_name.len,
   cstate->current_fh.fh_dentry->d_name.name);

 nfs4_lock_state();

 if ((status = nfs4_preprocess_seqid_op(cstate,
     close->cl_seqid,
     &close->cl_stateid,
     OPEN_STATE | CLOSE_STATE,
     &close->cl_stateowner, &stp, ((void*)0))))
  goto out;
 status = nfs_ok;
 update_stateid(&stp->st_stateid);
 memcpy(&close->cl_stateid, &stp->st_stateid, sizeof(stateid_t));


 release_open_stateid(stp);





 if (list_empty(&close->cl_stateowner->so_stateids))
  move_to_close_lru(close->cl_stateowner);
out:
 if (close->cl_stateowner) {
  nfs4_get_stateowner(close->cl_stateowner);
  cstate->replay_owner = close->cl_stateowner;
 }
 nfs4_unlock_state();
 return status;
}
