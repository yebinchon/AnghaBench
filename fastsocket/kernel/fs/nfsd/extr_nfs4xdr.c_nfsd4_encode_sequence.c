
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int data; } ;
struct nfsd4_sequence {int maxslots; int slotid; int seqid; TYPE_1__ sessionid; } ;
struct TYPE_4__ {int* datap; } ;
struct nfsd4_compoundres {TYPE_2__ cstate; } ;
typedef int __be32 ;


 int ADJUST_ARGS () ;
 scalar_t__ NFS4_MAX_SESSIONID_LEN ;
 int RESERVE_SPACE (scalar_t__) ;
 int WRITE32 (int ) ;
 int WRITEMEM (int ,scalar_t__) ;

__be32
nfsd4_encode_sequence(struct nfsd4_compoundres *resp, int nfserr,
        struct nfsd4_sequence *seq)
{
 __be32 *p;

 if (nfserr)
  return nfserr;

 RESERVE_SPACE(NFS4_MAX_SESSIONID_LEN + 20);
 WRITEMEM(seq->sessionid.data, NFS4_MAX_SESSIONID_LEN);
 WRITE32(seq->seqid);
 WRITE32(seq->slotid);
 WRITE32(seq->maxslots);





 WRITE32(seq->maxslots);
 WRITE32(0);

 ADJUST_ARGS();
 resp->cstate.datap = p;
 return 0;
}
