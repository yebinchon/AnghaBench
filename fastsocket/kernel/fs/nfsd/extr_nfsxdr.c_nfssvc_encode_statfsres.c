
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_rqst {int dummy; } ;
struct kstatfs {int f_bavail; int f_bfree; int f_blocks; int f_bsize; } ;
struct nfsd_statfsres {struct kstatfs stats; } ;
typedef int __be32 ;


 int NFSSVC_MAXBLKSIZE_V2 ;
 void* htonl (int ) ;
 int xdr_ressize_check (struct svc_rqst*,int *) ;

int
nfssvc_encode_statfsres(struct svc_rqst *rqstp, __be32 *p,
     struct nfsd_statfsres *resp)
{
 struct kstatfs *stat = &resp->stats;

 *p++ = htonl(NFSSVC_MAXBLKSIZE_V2);
 *p++ = htonl(stat->f_bsize);
 *p++ = htonl(stat->f_blocks);
 *p++ = htonl(stat->f_bfree);
 *p++ = htonl(stat->f_bavail);
 return xdr_ressize_check(rqstp, p);
}
