
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ cl_id; scalar_t__ cl_boot; } ;
struct nfsd4_lock_denied {scalar_t__ ld_start; scalar_t__ ld_length; int ld_type; TYPE_2__ ld_clientid; struct nfs4_stateowner* ld_sop; } ;
struct nfs4_stateowner {TYPE_1__* so_client; int so_ref; } ;
struct file_lock {scalar_t__ fl_start; scalar_t__ fl_end; scalar_t__ fl_type; scalar_t__ fl_owner; int * fl_lmops; } ;
struct TYPE_3__ {TYPE_2__ cl_clientid; } ;


 scalar_t__ F_RDLCK ;
 scalar_t__ NFS4_MAX_UINT64 ;
 int NFS4_READ_LT ;
 int NFS4_WRITE_LT ;
 int kref_get (int *) ;
 int nfsd_posix_mng_ops ;

__attribute__((used)) static inline void
nfs4_set_lock_denied(struct file_lock *fl, struct nfsd4_lock_denied *deny)
{
 struct nfs4_stateowner *sop;

 if (fl->fl_lmops == &nfsd_posix_mng_ops) {
  sop = (struct nfs4_stateowner *) fl->fl_owner;
  kref_get(&sop->so_ref);
  deny->ld_sop = sop;
  deny->ld_clientid = sop->so_client->cl_clientid;
 } else {
  deny->ld_sop = ((void*)0);
  deny->ld_clientid.cl_boot = 0;
  deny->ld_clientid.cl_id = 0;
 }
 deny->ld_start = fl->fl_start;
 deny->ld_length = NFS4_MAX_UINT64;
 if (fl->fl_end != NFS4_MAX_UINT64)
  deny->ld_length = fl->fl_end - fl->fl_start + 1;
 deny->ld_type = NFS4_READ_LT;
 if (fl->fl_type != F_RDLCK)
  deny->ld_type = NFS4_WRITE_LT;
}
