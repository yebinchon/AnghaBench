
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct svc_rqst {int dummy; } ;
struct svc_fh {int fh_pre_ctime; int fh_pre_mtime; scalar_t__ fh_pre_size; scalar_t__ fh_pre_saved; scalar_t__ fh_post_saved; struct dentry* fh_dentry; } ;
struct dentry {scalar_t__ d_inode; } ;
typedef int __be32 ;


 int * encode_post_op_attr (struct svc_rqst*,int *,struct svc_fh*) ;
 int * encode_saved_post_attr (struct svc_rqst*,int *,struct svc_fh*) ;
 int * encode_time3 (int *,int *) ;
 int * xdr_encode_hyper (int *,int ) ;
 int xdr_one ;
 void* xdr_zero ;

__attribute__((used)) static __be32 *
encode_wcc_data(struct svc_rqst *rqstp, __be32 *p, struct svc_fh *fhp)
{
 struct dentry *dentry = fhp->fh_dentry;

 if (dentry && dentry->d_inode && fhp->fh_post_saved) {
  if (fhp->fh_pre_saved) {
   *p++ = xdr_one;
   p = xdr_encode_hyper(p, (u64) fhp->fh_pre_size);
   p = encode_time3(p, &fhp->fh_pre_mtime);
   p = encode_time3(p, &fhp->fh_pre_ctime);
  } else {
   *p++ = xdr_zero;
  }
  return encode_saved_post_attr(rqstp, p, fhp);
 }

 *p++ = xdr_zero;
 return encode_post_op_attr(rqstp, p, fhp);
}
