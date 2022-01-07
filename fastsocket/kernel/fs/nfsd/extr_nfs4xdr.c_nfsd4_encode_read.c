
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef unsigned long u32 ;
struct nfsd4_read {unsigned long rd_length; int rd_vlen; scalar_t__ rd_offset; TYPE_7__* rd_fhp; int rd_filp; int rd_rqstp; } ;
struct nfsd4_compoundres {TYPE_5__* xbuf; TYPE_6__* rqstp; } ;
typedef int __be32 ;
struct TYPE_16__ {long iov_len; int iov_base; } ;
struct TYPE_15__ {TYPE_2__* fh_dentry; } ;
struct TYPE_14__ {TYPE_8__* rq_vec; int * rq_respages; int rq_resused; } ;
struct TYPE_13__ {long page_len; TYPE_4__* tail; TYPE_3__* head; } ;
struct TYPE_12__ {int iov_len; int * iov_base; } ;
struct TYPE_11__ {int iov_len; scalar_t__ iov_base; } ;
struct TYPE_10__ {TYPE_1__* d_inode; } ;
struct TYPE_9__ {scalar_t__ i_size; } ;


 int ADJUST_ARGS () ;
 long PAGE_SIZE ;
 int RESERVE_SPACE (int) ;
 int WRITE32 (unsigned long) ;
 int nfsd_read_file (int ,TYPE_7__*,int ,scalar_t__,TYPE_8__*,int,unsigned long*) ;
 int nfserr_inval ;
 int nfserr_resource ;
 int nfserr_symlink ;
 int page_address (int ) ;
 unsigned long svc_max_payload (TYPE_6__*) ;

__attribute__((used)) static __be32
nfsd4_encode_read(struct nfsd4_compoundres *resp, __be32 nfserr,
    struct nfsd4_read *read)
{
 u32 eof;
 int v, pn;
 unsigned long maxcount;
 long len;
 __be32 *p;

 if (nfserr)
  return nfserr;
 if (resp->xbuf->page_len)
  return nfserr_resource;

 RESERVE_SPACE(8);

 maxcount = svc_max_payload(resp->rqstp);
 if (maxcount > read->rd_length)
  maxcount = read->rd_length;

 len = maxcount;
 v = 0;
 while (len > 0) {
  pn = resp->rqstp->rq_resused++;
  resp->rqstp->rq_vec[v].iov_base =
   page_address(resp->rqstp->rq_respages[pn]);
  resp->rqstp->rq_vec[v].iov_len =
   len < PAGE_SIZE ? len : PAGE_SIZE;
  v++;
  len -= PAGE_SIZE;
 }
 read->rd_vlen = v;

 nfserr = nfsd_read_file(read->rd_rqstp, read->rd_fhp, read->rd_filp,
   read->rd_offset, resp->rqstp->rq_vec, read->rd_vlen,
   &maxcount);

 if (nfserr == nfserr_symlink)
  nfserr = nfserr_inval;
 if (nfserr)
  return nfserr;
 eof = (read->rd_offset + maxcount >=
        read->rd_fhp->fh_dentry->d_inode->i_size);

 WRITE32(eof);
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
