
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
struct xdr_buf {int page_base; scalar_t__ len; scalar_t__ buflen; struct kvec* head; struct kvec* tail; scalar_t__ page_len; struct page** pages; } ;
struct rpc_rqst {scalar_t__ rq_seqno; int rq_enc_pages_num; struct page** rq_enc_pages; struct xdr_buf rq_snd_buf; } ;
struct rpc_cred {int cr_flags; } ;
struct page {int dummy; } ;
struct kvec {char* iov_base; int iov_len; } ;
struct gss_cl_ctx {int gc_gss_ctx; } ;
typedef int (* kxdrproc_t ) (struct rpc_rqst*,char*,void*) ;
typedef char __be32 ;


 int BUG_ON (int) ;
 int EIO ;
 scalar_t__ GSS_S_CONTEXT_EXPIRED ;
 int PAGE_CACHE_SHIFT ;
 int RPCAUTH_CRED_UPTODATE ;
 int alloc_enc_pages (struct rpc_rqst*) ;
 int clear_bit (int ,int *) ;
 scalar_t__ gss_wrap (int ,scalar_t__,struct xdr_buf*,struct page**) ;
 void* htonl (scalar_t__) ;
 int memcpy (char*,char*,int) ;
 int memset (char*,int ,int) ;
 char* page_address (struct page*) ;

__attribute__((used)) static inline int
gss_wrap_req_priv(struct rpc_cred *cred, struct gss_cl_ctx *ctx,
  kxdrproc_t encode, struct rpc_rqst *rqstp, __be32 *p, void *obj)
{
 struct xdr_buf *snd_buf = &rqstp->rq_snd_buf;
 u32 offset;
 u32 maj_stat;
 int status;
 __be32 *opaque_len;
 struct page **inpages;
 int first;
 int pad;
 struct kvec *iov;
 char *tmp;

 opaque_len = p++;
 offset = (u8 *)p - (u8 *)snd_buf->head[0].iov_base;
 *p++ = htonl(rqstp->rq_seqno);

 status = encode(rqstp, p, obj);
 if (status)
  return status;

 status = alloc_enc_pages(rqstp);
 if (status)
  return status;
 first = snd_buf->page_base >> PAGE_CACHE_SHIFT;
 inpages = snd_buf->pages + first;
 snd_buf->pages = rqstp->rq_enc_pages;
 snd_buf->page_base -= first << PAGE_CACHE_SHIFT;
 if (snd_buf->page_len || snd_buf->tail[0].iov_len) {
  tmp = page_address(rqstp->rq_enc_pages[rqstp->rq_enc_pages_num - 1]);
  memcpy(tmp, snd_buf->tail[0].iov_base, snd_buf->tail[0].iov_len);
  snd_buf->tail[0].iov_base = tmp;
 }
 maj_stat = gss_wrap(ctx->gc_gss_ctx, offset, snd_buf, inpages);

 BUG_ON(snd_buf->len > snd_buf->buflen);
 status = -EIO;


 if (maj_stat == GSS_S_CONTEXT_EXPIRED)
  clear_bit(RPCAUTH_CRED_UPTODATE, &cred->cr_flags);
 else if (maj_stat)
  return status;

 *opaque_len = htonl(snd_buf->len - offset);

 if (snd_buf->page_len || snd_buf->tail[0].iov_len)
  iov = snd_buf->tail;
 else
  iov = snd_buf->head;
 p = iov->iov_base + iov->iov_len;
 pad = 3 - ((snd_buf->len - offset - 1) & 3);
 memset(p, 0, pad);
 iov->iov_len += pad;
 snd_buf->len += pad;

 return 0;
}
