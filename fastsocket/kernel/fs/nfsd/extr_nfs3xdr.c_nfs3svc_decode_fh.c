
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_fh {int dummy; } ;
typedef int __be32 ;


 int * decode_fh (int *,struct svc_fh*) ;

__be32 *nfs3svc_decode_fh(__be32 *p, struct svc_fh *fhp)
{
 return decode_fh(p, fhp);
}
