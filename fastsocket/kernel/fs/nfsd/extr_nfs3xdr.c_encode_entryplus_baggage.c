
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_fh {int dummy; } ;
struct nfsd3_readdirres {int rqstp; } ;
typedef int __be32 ;


 int NFS3_FHSIZE ;
 int compose_entry_fh (struct nfsd3_readdirres*,struct svc_fh*,char const*,int) ;
 int * encode_fh (int *,struct svc_fh*) ;
 int * encode_post_op_attr (int ,int *,struct svc_fh*) ;
 int fh_init (struct svc_fh*,int ) ;
 int fh_put (struct svc_fh*) ;
 scalar_t__ xdr_one ;

__be32 *encode_entryplus_baggage(struct nfsd3_readdirres *cd, __be32 *p, const char *name, int namlen)
{
 struct svc_fh fh;
 int err;

 fh_init(&fh, NFS3_FHSIZE);
 err = compose_entry_fh(cd, &fh, name, namlen);
 if (err) {
  *p++ = 0;
  *p++ = 0;
  goto out;
 }
 p = encode_post_op_attr(cd->rqstp, p, &fh);
 *p++ = xdr_one;
 p = encode_fh(p, &fh);
out:
 fh_put(&fh);
 return p;
}
