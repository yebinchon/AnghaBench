
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {unsigned long page_len; } ;
struct svc_rqst {TYPE_2__ rq_res; } ;
struct TYPE_3__ {scalar_t__ err; } ;
struct nfsd_readdirres {TYPE_1__ common; int * buffer; } ;
typedef int __be32 ;


 unsigned long PAGE_MASK ;
 scalar_t__ htonl (int) ;
 scalar_t__ nfserr_eof ;
 int xdr_ressize_check (struct svc_rqst*,int *) ;

int
nfssvc_encode_readdirres(struct svc_rqst *rqstp, __be32 *p,
     struct nfsd_readdirres *resp)
{
 xdr_ressize_check(rqstp, p);
 p = resp->buffer;
 *p++ = 0;
 *p++ = htonl((resp->common.err == nfserr_eof));
 rqstp->rq_res.page_len = (((unsigned long)p-1) & ~PAGE_MASK)+1;

 return 1;
}
