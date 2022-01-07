
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kioctx {int wait; scalar_t__ dead; int reqs_active; int ctx_lock; } ;
struct kiocb {int * ki_iovec; int ki_inline_vec; int (* ki_dtor ) (struct kiocb*) ;int * ki_eventfd; } ;


 int assert_spin_locked (int *) ;
 int eventfd_ctx_put (int *) ;
 int kfree (int *) ;
 int kiocb_cachep ;
 int kmem_cache_free (int ,struct kiocb*) ;
 int stub1 (struct kiocb*) ;
 scalar_t__ unlikely (int) ;
 int wake_up (int *) ;

__attribute__((used)) static inline void really_put_req(struct kioctx *ctx, struct kiocb *req)
{
 assert_spin_locked(&ctx->ctx_lock);

 if (req->ki_eventfd != ((void*)0))
  eventfd_ctx_put(req->ki_eventfd);
 if (req->ki_dtor)
  req->ki_dtor(req);
 if (req->ki_iovec != &req->ki_inline_vec)
  kfree(req->ki_iovec);
 kmem_cache_free(kiocb_cachep, req);
 ctx->reqs_active--;

 if (unlikely(!ctx->reqs_active && ctx->dead))
  wake_up(&ctx->wait);
}
