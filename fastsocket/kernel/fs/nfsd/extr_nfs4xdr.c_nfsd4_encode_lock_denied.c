
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct nfsd4_lock_denied {int ld_type; TYPE_2__* ld_sop; int ld_clientid; int ld_length; int ld_start; } ;
struct nfsd4_compoundres {int dummy; } ;
typedef int __be32 ;
struct TYPE_3__ {int len; int * data; } ;
struct TYPE_4__ {int so_ref; TYPE_1__ so_owner; } ;


 int ADJUST_ARGS () ;
 int RESERVE_SPACE (scalar_t__) ;
 int WRITE32 (int) ;
 int WRITE64 (int ) ;
 int WRITEMEM (int *,int) ;
 scalar_t__ XDR_LEN (int) ;
 int kref_put (int *,int ) ;
 int nfs4_free_stateowner ;

__attribute__((used)) static void
nfsd4_encode_lock_denied(struct nfsd4_compoundres *resp, struct nfsd4_lock_denied *ld)
{
 __be32 *p;

 RESERVE_SPACE(32 + XDR_LEN(ld->ld_sop ? ld->ld_sop->so_owner.len : 0));
 WRITE64(ld->ld_start);
 WRITE64(ld->ld_length);
 WRITE32(ld->ld_type);
 if (ld->ld_sop) {
  WRITEMEM(&ld->ld_clientid, 8);
  WRITE32(ld->ld_sop->so_owner.len);
  WRITEMEM(ld->ld_sop->so_owner.data, ld->ld_sop->so_owner.len);
  kref_put(&ld->ld_sop->so_ref, nfs4_free_stateowner);
 } else {
  WRITE64((u64)0);
  WRITE32(0);
 }
 ADJUST_ARGS();
}
