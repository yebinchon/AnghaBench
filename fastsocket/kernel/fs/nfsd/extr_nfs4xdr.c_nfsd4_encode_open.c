
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nfsd4_open {int op_rflags; int* op_bmval; int op_delegate_type; int op_recall; int op_stateowner; int op_delegate_stateid; int op_cinfo; int op_stateid; } ;
struct nfsd4_compoundres {int dummy; } ;
typedef scalar_t__ __be32 ;


 int ADJUST_ARGS () ;
 int BUG () ;
 int ENCODE_SEQID_OP_HEAD ;
 int ENCODE_SEQID_OP_TAIL (int ) ;
 int NFS4_ACE_ACCESS_ALLOWED_ACE_TYPE ;
 int NFS4_LIMIT_SIZE ;



 int RESERVE_SPACE (int) ;
 int WRITE32 (int) ;
 int nfsd4_encode_stateid (struct nfsd4_compoundres*,int *) ;
 int write_cinfo (scalar_t__**,int *) ;

__attribute__((used)) static __be32
nfsd4_encode_open(struct nfsd4_compoundres *resp, __be32 nfserr, struct nfsd4_open *open)
{
 __be32 *p;
 ENCODE_SEQID_OP_HEAD;

 if (nfserr)
  goto out;

 nfsd4_encode_stateid(resp, &open->op_stateid);
 RESERVE_SPACE(40);
 write_cinfo(&p, &open->op_cinfo);
 WRITE32(open->op_rflags);
 WRITE32(2);
 WRITE32(open->op_bmval[0]);
 WRITE32(open->op_bmval[1]);
 WRITE32(open->op_delegate_type);
 ADJUST_ARGS();

 switch (open->op_delegate_type) {
 case 130:
  break;
 case 129:
  nfsd4_encode_stateid(resp, &open->op_delegate_stateid);
  RESERVE_SPACE(20);
  WRITE32(open->op_recall);




  WRITE32(NFS4_ACE_ACCESS_ALLOWED_ACE_TYPE);
  WRITE32(0);
  WRITE32(0);
  WRITE32(0);
  ADJUST_ARGS();
  break;
 case 128:
  nfsd4_encode_stateid(resp, &open->op_delegate_stateid);
  RESERVE_SPACE(32);
  WRITE32(0);




  WRITE32(NFS4_LIMIT_SIZE);
  WRITE32(~(u32)0);
  WRITE32(~(u32)0);




  WRITE32(NFS4_ACE_ACCESS_ALLOWED_ACE_TYPE);
  WRITE32(0);
  WRITE32(0);
  WRITE32(0);
  ADJUST_ARGS();
  break;
 default:
  BUG();
 }

out:
 ENCODE_SEQID_OP_TAIL(open->op_stateowner);
 return nfserr;
}
