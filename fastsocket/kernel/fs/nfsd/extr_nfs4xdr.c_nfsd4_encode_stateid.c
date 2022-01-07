
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct nfsd4_compoundres {int dummy; } ;
struct TYPE_3__ {int si_opaque; int si_generation; } ;
typedef TYPE_1__ stateid_t ;
typedef int stateid_opaque_t ;
typedef int __be32 ;


 int ADJUST_ARGS () ;
 int RESERVE_SPACE (int) ;
 int WRITE32 (int ) ;
 int WRITEMEM (int *,int) ;

__attribute__((used)) static void
nfsd4_encode_stateid(struct nfsd4_compoundres *resp, stateid_t *sid)
{
 __be32 *p;

 RESERVE_SPACE(sizeof(stateid_t));
 WRITE32(sid->si_generation);
 WRITEMEM(&sid->si_opaque, sizeof(stateid_opaque_t));
 ADJUST_ARGS();
}
