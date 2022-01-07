
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct svc_export {int ex_flags; } ;
struct nfsd4_readdir {int rd_rqstp; int rd_bmval; TYPE_1__* rd_fhp; } ;
struct dentry {int d_inode; } ;
typedef scalar_t__ __be32 ;
struct TYPE_2__ {int fh_dentry; struct svc_export* fh_export; } ;


 scalar_t__ IS_ERR (struct dentry*) ;
 int NFSEXP_V4ROOT ;
 int PTR_ERR (struct dentry*) ;
 int attributes_need_mount (int ) ;
 scalar_t__ check_nfsd_access (struct svc_export*,int ) ;
 int dput (struct dentry*) ;
 int exp_get (struct svc_export*) ;
 int exp_put (struct svc_export*) ;
 struct dentry* lookup_one_len (char const*,int ,int) ;
 scalar_t__ nfsd4_encode_fattr (int *,struct svc_export*,struct dentry*,scalar_t__*,int*,int ,int ,int) ;
 int nfsd_cross_mnt (int ,struct dentry**,struct svc_export**) ;
 scalar_t__ nfsd_mountpoint (struct dentry*,struct svc_export*) ;
 scalar_t__ nfserr_noent ;
 scalar_t__ nfserrno (int) ;

__attribute__((used)) static __be32
nfsd4_encode_dirent_fattr(struct nfsd4_readdir *cd,
  const char *name, int namlen, __be32 *p, int *buflen)
{
 struct svc_export *exp = cd->rd_fhp->fh_export;
 struct dentry *dentry;
 __be32 nfserr;
 int ignore_crossmnt = 0;

 dentry = lookup_one_len(name, cd->rd_fhp->fh_dentry, namlen);
 if (IS_ERR(dentry))
  return nfserrno(PTR_ERR(dentry));
 if (!dentry->d_inode) {





  dput(dentry);
  return nfserr_noent;
 }

 exp_get(exp);







 if (nfsd_mountpoint(dentry, exp)) {
  int err;

  if (!(exp->ex_flags & NFSEXP_V4ROOT)
    && !attributes_need_mount(cd->rd_bmval)) {
   ignore_crossmnt = 1;
   goto out_encode;
  }





  err = nfsd_cross_mnt(cd->rd_rqstp, &dentry, &exp);
  if (err) {
   nfserr = nfserrno(err);
   goto out_put;
  }
  nfserr = check_nfsd_access(exp, cd->rd_rqstp);
  if (nfserr)
   goto out_put;

 }
out_encode:
 nfserr = nfsd4_encode_fattr(((void*)0), exp, dentry, p, buflen, cd->rd_bmval,
     cd->rd_rqstp, ignore_crossmnt);
out_put:
 dput(dentry);
 exp_put(exp);
 return nfserr;
}
