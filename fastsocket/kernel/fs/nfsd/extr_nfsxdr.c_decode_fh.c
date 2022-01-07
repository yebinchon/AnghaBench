
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fh_size; int fh_base; } ;
struct svc_fh {TYPE_1__ fh_handle; } ;
typedef int __be32 ;


 int NFS_FHSIZE ;
 int fh_init (struct svc_fh*,int) ;
 int memcpy (int *,int *,int) ;

__attribute__((used)) static __be32 *
decode_fh(__be32 *p, struct svc_fh *fhp)
{
 fh_init(fhp, NFS_FHSIZE);
 memcpy(&fhp->fh_handle.fh_base, p, NFS_FHSIZE);
 fhp->fh_handle.fh_size = NFS_FHSIZE;



 return p + (NFS_FHSIZE >> 2);
}
