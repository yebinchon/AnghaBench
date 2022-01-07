
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {size_t page_len; int page_base; } ;
struct svc_rqst {int rq_resused; TYPE_3__ rq_res; struct page** rq_respages; } ;
struct TYPE_4__ {struct svc_rqst* data; } ;
struct splice_desc {size_t len; TYPE_1__ u; } ;
struct pipe_inode_info {int dummy; } ;
struct pipe_buffer {int offset; TYPE_2__* ops; struct page* page; } ;
struct page {int dummy; } ;
struct TYPE_5__ {int (* confirm ) (struct pipe_inode_info*,struct pipe_buffer*) ;} ;


 int get_page (struct page*) ;
 int put_page (struct page*) ;
 int stub1 (struct pipe_inode_info*,struct pipe_buffer*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int
nfsd_splice_actor(struct pipe_inode_info *pipe, struct pipe_buffer *buf,
    struct splice_desc *sd)
{
 struct svc_rqst *rqstp = sd->u.data;
 struct page **pp = rqstp->rq_respages + rqstp->rq_resused;
 struct page *page = buf->page;
 size_t size;
 int ret;

 ret = buf->ops->confirm(pipe, buf);
 if (unlikely(ret))
  return ret;

 size = sd->len;

 if (rqstp->rq_res.page_len == 0) {
  get_page(page);
  put_page(*pp);
  *pp = page;
  rqstp->rq_resused++;
  rqstp->rq_res.page_base = buf->offset;
  rqstp->rq_res.page_len = size;
 } else if (page != pp[-1]) {
  get_page(page);
  if (*pp)
   put_page(*pp);
  *pp = page;
  rqstp->rq_resused++;
  rqstp->rq_res.page_len += size;
 } else
  rqstp->rq_res.page_len += size;

 return size;
}
