
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsd4_op {int opnum; struct nfs4_replay* replay; } ;
struct nfsd4_compoundres {int dummy; } ;
struct nfs4_replay {int rp_buflen; int rp_buf; int rp_status; } ;
typedef int __be32 ;


 int ADJUST_ARGS () ;
 int BUG_ON (int) ;
 int RESERVE_SPACE (int) ;
 int WRITE32 (int ) ;
 int WRITEMEM (int ,int) ;

void
nfsd4_encode_replay(struct nfsd4_compoundres *resp, struct nfsd4_op *op)
{
 __be32 *p;
 struct nfs4_replay *rp = op->replay;

 BUG_ON(!rp);

 RESERVE_SPACE(8);
 WRITE32(op->opnum);
 *p++ = rp->rp_status;
 ADJUST_ARGS();

 RESERVE_SPACE(rp->rp_buflen);
 WRITEMEM(rp->rp_buf, rp->rp_buflen);
 ADJUST_ARGS();
}
