
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * ring_pages; } ;
struct kioctx {scalar_t__ reqs_active; int ctx_lock; int active_reqs; TYPE_1__ ring_info; } ;
struct kiocb {int ki_users; int ki_list; int * ki_eventfd; int ki_run_list; int * ki_iovec; int * private; int * ki_dtor; int * ki_retry; int * ki_cancel; struct kioctx* ki_ctx; scalar_t__ ki_key; scalar_t__ ki_flags; } ;
struct aio_ring {int dummy; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int KM_USER0 ;
 scalar_t__ aio_ring_avail (TYPE_1__*,struct aio_ring*) ;
 int kiocb_cachep ;
 struct aio_ring* kmap_atomic (int ,int ) ;
 struct kiocb* kmem_cache_alloc (int ,int ) ;
 int kmem_cache_free (int ,struct kiocb*) ;
 int kunmap_atomic (struct aio_ring*,int ) ;
 int list_add (int *,int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static struct kiocb *__aio_get_req(struct kioctx *ctx)
{
 struct kiocb *req = ((void*)0);
 struct aio_ring *ring;
 int okay = 0;

 req = kmem_cache_alloc(kiocb_cachep, GFP_KERNEL);
 if (unlikely(!req))
  return ((void*)0);

 req->ki_flags = 0;
 req->ki_users = 2;
 req->ki_key = 0;
 req->ki_ctx = ctx;
 req->ki_cancel = ((void*)0);
 req->ki_retry = ((void*)0);
 req->ki_dtor = ((void*)0);
 req->private = ((void*)0);
 req->ki_iovec = ((void*)0);
 INIT_LIST_HEAD(&req->ki_run_list);
 req->ki_eventfd = ((void*)0);




 spin_lock_irq(&ctx->ctx_lock);
 ring = kmap_atomic(ctx->ring_info.ring_pages[0], KM_USER0);
 if (ctx->reqs_active < aio_ring_avail(&ctx->ring_info, ring)) {
  list_add(&req->ki_list, &ctx->active_reqs);
  ctx->reqs_active++;
  okay = 1;
 }
 kunmap_atomic(ring, KM_USER0);
 spin_unlock_irq(&ctx->ctx_lock);

 if (!okay) {
  kmem_cache_free(kiocb_cachep, req);
  req = ((void*)0);
 }

 return req;
}
