
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct nfsd4_readlink {int rl_fhp; int rl_rqstp; } ;
struct nfsd4_compoundres {TYPE_4__* xbuf; TYPE_1__* rqstp; } ;
typedef int __be32 ;
struct TYPE_8__ {int page_len; TYPE_3__* tail; TYPE_2__* head; } ;
struct TYPE_7__ {int iov_len; int * iov_base; } ;
struct TYPE_6__ {int iov_len; scalar_t__ iov_base; } ;
struct TYPE_5__ {int rq_resused; int * rq_respages; } ;


 int ADJUST_ARGS () ;
 int PAGE_SIZE ;
 int RESERVE_SPACE (int) ;
 int WRITE32 (int) ;
 int nfsd_readlink (int ,int ,char*,int*) ;
 int nfserr_inval ;
 int nfserr_isdir ;
 int nfserr_resource ;
 char* page_address (int ) ;

__attribute__((used)) static __be32
nfsd4_encode_readlink(struct nfsd4_compoundres *resp, __be32 nfserr, struct nfsd4_readlink *readlink)
{
 int maxcount;
 char *page;
 __be32 *p;

 if (nfserr)
  return nfserr;
 if (resp->xbuf->page_len)
  return nfserr_resource;

 page = page_address(resp->rqstp->rq_respages[resp->rqstp->rq_resused++]);

 maxcount = PAGE_SIZE;
 RESERVE_SPACE(4);







 nfserr = nfsd_readlink(readlink->rl_rqstp, readlink->rl_fhp, page, &maxcount);
 if (nfserr == nfserr_isdir)
  return nfserr_inval;
 if (nfserr)
  return nfserr;

 WRITE32(maxcount);
 ADJUST_ARGS();
 resp->xbuf->head[0].iov_len = (char*)p
    - (char*)resp->xbuf->head[0].iov_base;
 resp->xbuf->page_len = maxcount;


 resp->xbuf->tail[0].iov_base = p;
 resp->xbuf->tail[0].iov_len = 0;
 if (maxcount&3) {
  RESERVE_SPACE(4);
  WRITE32(0);
  resp->xbuf->tail[0].iov_base += maxcount&3;
  resp->xbuf->tail[0].iov_len = 4 - (maxcount&3);
  ADJUST_ARGS();
 }
 return 0;
}
