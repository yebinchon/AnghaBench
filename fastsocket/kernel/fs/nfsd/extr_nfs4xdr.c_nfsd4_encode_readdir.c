
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ err; } ;
struct nfsd4_readdir {int rd_maxcount; int buflen; scalar_t__* buffer; TYPE_5__ common; int * offset; int rd_fhp; int rd_rqstp; int rd_cookie; } ;
struct nfsd4_compoundres {scalar_t__* p; scalar_t__* end; TYPE_4__* xbuf; TYPE_1__* rqstp; } ;
typedef int loff_t ;
typedef scalar_t__ __be32 ;
struct TYPE_9__ {int page_len; TYPE_3__* head; TYPE_2__* tail; } ;
struct TYPE_8__ {int iov_len; scalar_t__ iov_base; } ;
struct TYPE_7__ {scalar_t__* iov_base; scalar_t__ iov_len; } ;
struct TYPE_6__ {int rq_resused; int * rq_respages; } ;


 int ADJUST_ARGS () ;
 int PAGE_SIZE ;
 int RESERVE_SPACE (int) ;
 int WRITE32 (int ) ;
 scalar_t__ htonl (int) ;
 scalar_t__ nfs_ok ;
 int nfsd4_encode_dirent ;
 scalar_t__ nfsd_readdir (int ,int ,int *,TYPE_5__*,int ) ;
 scalar_t__ nfserr_eof ;
 scalar_t__ nfserr_notdir ;
 scalar_t__ nfserr_resource ;
 scalar_t__ nfserr_symlink ;
 scalar_t__ nfserr_toosmall ;
 scalar_t__* page_address (int ) ;
 int xdr_encode_hyper (int *,int ) ;

__attribute__((used)) static __be32
nfsd4_encode_readdir(struct nfsd4_compoundres *resp, __be32 nfserr, struct nfsd4_readdir *readdir)
{
 int maxcount;
 loff_t offset;
 __be32 *page, *savep, *tailbase;
 __be32 *p;

 if (nfserr)
  return nfserr;
 if (resp->xbuf->page_len)
  return nfserr_resource;

 RESERVE_SPACE(8);
 savep = p;


 WRITE32(0);
 WRITE32(0);
 ADJUST_ARGS();
 resp->xbuf->head[0].iov_len = ((char*)resp->p) - (char*)resp->xbuf->head[0].iov_base;
 tailbase = p;

 maxcount = PAGE_SIZE;
 if (maxcount > readdir->rd_maxcount)
  maxcount = readdir->rd_maxcount;






 maxcount = (maxcount >> 2) - 4;
 if (maxcount < 0) {
  nfserr = nfserr_toosmall;
  goto err_no_verf;
 }

 page = page_address(resp->rqstp->rq_respages[resp->rqstp->rq_resused++]);
 readdir->common.err = 0;
 readdir->buflen = maxcount;
 readdir->buffer = page;
 readdir->offset = ((void*)0);

 offset = readdir->rd_cookie;
 nfserr = nfsd_readdir(readdir->rd_rqstp, readdir->rd_fhp,
         &offset,
         &readdir->common, nfsd4_encode_dirent);
 if (nfserr == nfs_ok &&
     readdir->common.err == nfserr_toosmall &&
     readdir->buffer == page)
  nfserr = nfserr_toosmall;
 if (nfserr == nfserr_symlink)
  nfserr = nfserr_notdir;
 if (nfserr)
  goto err_no_verf;

 if (readdir->offset)
  xdr_encode_hyper(readdir->offset, offset);

 p = readdir->buffer;
 *p++ = 0;
 *p++ = htonl(readdir->common.err == nfserr_eof);
 resp->xbuf->page_len = ((char*)p) - (char*)page_address(
  resp->rqstp->rq_respages[resp->rqstp->rq_resused-1]);


 resp->xbuf->tail[0].iov_base = tailbase;
 resp->xbuf->tail[0].iov_len = 0;
 resp->p = resp->xbuf->tail[0].iov_base;
 resp->end = resp->p + (PAGE_SIZE - resp->xbuf->head[0].iov_len)/4;

 return 0;
err_no_verf:
 p = savep;
 ADJUST_ARGS();
 return nfserr;
}
