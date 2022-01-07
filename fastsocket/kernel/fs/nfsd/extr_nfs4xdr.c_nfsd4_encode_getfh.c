
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int fh_size; int fh_base; } ;
struct svc_fh {TYPE_1__ fh_handle; } ;
struct nfsd4_compoundres {int dummy; } ;
typedef int __be32 ;


 int ADJUST_ARGS () ;
 int RESERVE_SPACE (unsigned int) ;
 int WRITE32 (unsigned int) ;
 int WRITEMEM (int *,unsigned int) ;

__attribute__((used)) static __be32
nfsd4_encode_getfh(struct nfsd4_compoundres *resp, __be32 nfserr, struct svc_fh **fhpp)
{
 struct svc_fh *fhp = *fhpp;
 unsigned int len;
 __be32 *p;

 if (!nfserr) {
  len = fhp->fh_handle.fh_size;
  RESERVE_SPACE(len + 4);
  WRITE32(len);
  WRITEMEM(&fhp->fh_handle.fh_base, len);
  ADJUST_ARGS();
 }
 return nfserr;
}
