
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsd4_lock {int lk_replay_owner; int lk_denied; int lk_resp_stateid; } ;
struct nfsd4_compoundres {int dummy; } ;
typedef scalar_t__ __be32 ;


 int ENCODE_SEQID_OP_HEAD ;
 int ENCODE_SEQID_OP_TAIL (int ) ;
 int nfsd4_encode_lock_denied (struct nfsd4_compoundres*,int *) ;
 int nfsd4_encode_stateid (struct nfsd4_compoundres*,int *) ;
 scalar_t__ nfserr_denied ;

__attribute__((used)) static __be32
nfsd4_encode_lock(struct nfsd4_compoundres *resp, __be32 nfserr, struct nfsd4_lock *lock)
{
 ENCODE_SEQID_OP_HEAD;

 if (!nfserr)
  nfsd4_encode_stateid(resp, &lock->lk_resp_stateid);
 else if (nfserr == nfserr_denied)
  nfsd4_encode_lock_denied(resp, &lock->lk_denied);

 ENCODE_SEQID_OP_TAIL(lock->lk_replay_owner);
 return nfserr;
}
