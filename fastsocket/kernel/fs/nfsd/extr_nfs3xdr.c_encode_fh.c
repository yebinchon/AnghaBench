
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int fh_size; int fh_base; } ;
struct svc_fh {TYPE_1__ fh_handle; } ;
typedef scalar_t__ __be32 ;


 int XDR_QUADLEN (unsigned int) ;
 int htonl (unsigned int) ;
 int memcpy (scalar_t__*,int *,unsigned int) ;

__attribute__((used)) static __be32 *
encode_fh(__be32 *p, struct svc_fh *fhp)
{
 unsigned int size = fhp->fh_handle.fh_size;
 *p++ = htonl(size);
 if (size) p[XDR_QUADLEN(size)-1]=0;
 memcpy(p, &fhp->fh_handle.fh_base, size);
 return p + XDR_QUADLEN(size);
}
