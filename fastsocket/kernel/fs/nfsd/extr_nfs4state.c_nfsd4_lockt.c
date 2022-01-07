
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct svc_rqst {int dummy; } ;
struct nfsd4_lockt {int lt_type; int lt_denied; int lt_length; int lt_offset; int * lt_stateowner; int lt_owner; int lt_clientid; } ;
struct TYPE_6__ {TYPE_1__* fh_dentry; } ;
struct nfsd4_compound_state {TYPE_2__ current_fh; } ;
struct inode {int dummy; } ;
struct file_lock {scalar_t__ fl_type; int fl_end; int fl_start; int fl_flags; int fl_pid; scalar_t__ fl_owner; } ;
typedef scalar_t__ fl_owner_t ;
typedef scalar_t__ __be32 ;
struct TYPE_7__ {int tgid; } ;
struct TYPE_5__ {struct inode* d_inode; } ;


 int FL_POSIX ;
 scalar_t__ F_RDLCK ;
 scalar_t__ F_UNLCK ;
 scalar_t__ F_WRLCK ;




 scalar_t__ STALE_CLIENTID (int *) ;
 int S_IFREG ;
 scalar_t__ check_lock_length (int ,int ) ;
 TYPE_4__* current ;
 int dprintk (char*) ;
 scalar_t__ fh_verify (struct svc_rqst*,TYPE_2__*,int ,int ) ;
 int * find_lockstateowner_str (struct inode*,int *,int *) ;
 int last_byte_offset (int ,int ) ;
 scalar_t__ locks_in_grace () ;
 int locks_init_lock (struct file_lock*) ;
 int nfs4_lock_state () ;
 int nfs4_set_lock_denied (struct file_lock*,int *) ;
 int nfs4_transform_lock_offset (struct file_lock*) ;
 int nfs4_unlock_state () ;
 scalar_t__ nfs_ok ;
 int nfsd4_has_session (struct nfsd4_compound_state*) ;
 int nfsd_test_lock (struct svc_rqst*,TYPE_2__*,struct file_lock*) ;
 scalar_t__ nfserr_denied ;
 scalar_t__ nfserr_grace ;
 scalar_t__ nfserr_inval ;
 scalar_t__ nfserr_stale_clientid ;
 scalar_t__ nfserr_symlink ;
 scalar_t__ nfserrno (int) ;

__be32
nfsd4_lockt(struct svc_rqst *rqstp, struct nfsd4_compound_state *cstate,
     struct nfsd4_lockt *lockt)
{
 struct inode *inode;
 struct file_lock file_lock;
 int error;
 __be32 status;

 if (locks_in_grace())
  return nfserr_grace;

 if (check_lock_length(lockt->lt_offset, lockt->lt_length))
   return nfserr_inval;

 lockt->lt_stateowner = ((void*)0);
 nfs4_lock_state();

 status = nfserr_stale_clientid;
 if (!nfsd4_has_session(cstate) && STALE_CLIENTID(&lockt->lt_clientid))
  goto out;

 if ((status = fh_verify(rqstp, &cstate->current_fh, S_IFREG, 0))) {
  dprintk("NFSD: nfsd4_lockt: fh_verify() failed!\n");
  if (status == nfserr_symlink)
   status = nfserr_inval;
  goto out;
 }

 inode = cstate->current_fh.fh_dentry->d_inode;
 locks_init_lock(&file_lock);
 switch (lockt->lt_type) {
  case 130:
  case 131:
   file_lock.fl_type = F_RDLCK;
  break;
  case 128:
  case 129:
   file_lock.fl_type = F_WRLCK;
  break;
  default:
   dprintk("NFSD: nfs4_lockt: bad lock type!\n");
   status = nfserr_inval;
  goto out;
 }

 lockt->lt_stateowner = find_lockstateowner_str(inode,
   &lockt->lt_clientid, &lockt->lt_owner);
 if (lockt->lt_stateowner)
  file_lock.fl_owner = (fl_owner_t)lockt->lt_stateowner;
 file_lock.fl_pid = current->tgid;
 file_lock.fl_flags = FL_POSIX;

 file_lock.fl_start = lockt->lt_offset;
 file_lock.fl_end = last_byte_offset(lockt->lt_offset, lockt->lt_length);

 nfs4_transform_lock_offset(&file_lock);

 status = nfs_ok;
 error = nfsd_test_lock(rqstp, &cstate->current_fh, &file_lock);
 if (error) {
  status = nfserrno(error);
  goto out;
 }
 if (file_lock.fl_type != F_UNLCK) {
  status = nfserr_denied;
  nfs4_set_lock_denied(&file_lock, &lockt->lt_denied);
 }
out:
 nfs4_unlock_state();
 return status;
}
