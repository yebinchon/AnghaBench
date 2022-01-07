
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int page_len; TYPE_3__* tail; TYPE_1__* head; } ;
struct svc_rqst {TYPE_4__ rq_res; } ;
struct TYPE_6__ {scalar_t__ err; } ;
struct nfsd3_readdirres {scalar_t__ status; int count; TYPE_2__ common; int verf; int fh; } ;
typedef int __be32 ;
struct TYPE_7__ {int iov_len; int * iov_base; } ;
struct TYPE_5__ {scalar_t__ iov_len; } ;


 scalar_t__ PAGE_SIZE ;
 int * encode_post_op_attr (struct svc_rqst*,int *,int *) ;
 scalar_t__ htonl (int) ;
 int memcpy (int *,int ,int) ;
 scalar_t__ nfserr_eof ;
 int xdr_ressize_check (struct svc_rqst*,int *) ;

int
nfs3svc_encode_readdirres(struct svc_rqst *rqstp, __be32 *p,
     struct nfsd3_readdirres *resp)
{
 p = encode_post_op_attr(rqstp, p, &resp->fh);

 if (resp->status == 0) {

  memcpy(p, resp->verf, 8); p += 2;
  xdr_ressize_check(rqstp, p);
  if (rqstp->rq_res.head[0].iov_len + (2<<2) > PAGE_SIZE)
   return 1;
  rqstp->rq_res.page_len = (resp->count) << 2;


  rqstp->rq_res.tail[0].iov_base = p;
  *p++ = 0;
  *p++ = htonl(resp->common.err == nfserr_eof);
  rqstp->rq_res.tail[0].iov_len = 2<<2;
  return 1;
 } else
  return xdr_ressize_check(rqstp, p);
}
