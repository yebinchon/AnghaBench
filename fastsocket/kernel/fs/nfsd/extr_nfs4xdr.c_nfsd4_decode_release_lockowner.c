
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int len; int data; } ;
struct nfsd4_release_lockowner {int rl_clientid; TYPE_1__ rl_owner; } ;
struct nfsd4_compoundargs {scalar_t__ minorversion; } ;
typedef int clientid_t ;
typedef int __be32 ;


 int COPYMEM (int *,int) ;
 int DECODE_HEAD ;
 int DECODE_TAIL ;
 int READ32 (int) ;
 int READMEM (int ,int) ;
 int READ_BUF (int) ;
 int nfserr_inval ;
 int zero_clientid (int *) ;

__attribute__((used)) static __be32
nfsd4_decode_release_lockowner(struct nfsd4_compoundargs *argp, struct nfsd4_release_lockowner *rlockowner)
{
 DECODE_HEAD;

 READ_BUF(12);
 COPYMEM(&rlockowner->rl_clientid, sizeof(clientid_t));
 READ32(rlockowner->rl_owner.len);
 READ_BUF(rlockowner->rl_owner.len);
 READMEM(rlockowner->rl_owner.data, rlockowner->rl_owner.len);

 if (argp->minorversion && !zero_clientid(&rlockowner->rl_clientid))
  return nfserr_inval;
 DECODE_TAIL;
}
