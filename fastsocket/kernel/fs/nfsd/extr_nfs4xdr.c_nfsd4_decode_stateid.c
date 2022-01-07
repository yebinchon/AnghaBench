
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct nfsd4_compoundargs {int dummy; } ;
struct TYPE_3__ {int si_opaque; int si_generation; } ;
typedef TYPE_1__ stateid_t ;
typedef int stateid_opaque_t ;
typedef int __be32 ;


 int COPYMEM (int *,int) ;
 int DECODE_HEAD ;
 int DECODE_TAIL ;
 int READ32 (int ) ;
 int READ_BUF (int) ;

__attribute__((used)) static __be32
nfsd4_decode_stateid(struct nfsd4_compoundargs *argp, stateid_t *sid)
{
 DECODE_HEAD;

 READ_BUF(sizeof(stateid_t));
 READ32(sid->si_generation);
 COPYMEM(&sid->si_opaque, sizeof(stateid_opaque_t));

 DECODE_TAIL;
}
