
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_fh {int fh_dentry; int fh_export; } ;
struct nfsd4_getattr {int ga_bmval; struct svc_fh* ga_fhp; } ;
struct nfsd4_compoundres {int end; int p; int rqstp; } ;
typedef int __be32 ;


 int COMPOUND_ERR_SLACK_SPACE ;
 int nfsd4_encode_fattr (struct svc_fh*,int ,int ,int,int*,int ,int ,int ) ;

__attribute__((used)) static __be32
nfsd4_encode_getattr(struct nfsd4_compoundres *resp, __be32 nfserr, struct nfsd4_getattr *getattr)
{
 struct svc_fh *fhp = getattr->ga_fhp;
 int buflen;

 if (nfserr)
  return nfserr;

 buflen = resp->end - resp->p - (COMPOUND_ERR_SLACK_SPACE >> 2);
 nfserr = nfsd4_encode_fattr(fhp, fhp->fh_export, fhp->fh_dentry,
        resp->p, &buflen, getattr->ga_bmval,
        resp->rqstp, 0);
 if (!nfserr)
  resp->p += buflen;
 return nfserr;
}
