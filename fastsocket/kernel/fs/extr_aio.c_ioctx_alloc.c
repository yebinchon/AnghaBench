
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mm_struct {int ioctx_lock; int ioctx_list; int mm_count; } ;
struct TYPE_3__ {int nr; int ring_lock; } ;
struct kioctx {unsigned int max_reqs; TYPE_1__ ring_info; int user_id; int list; int wq; int run_list; int active_reqs; int wait; int ctx_lock; int users; struct mm_struct* mm; } ;
struct kiocb {int dummy; } ;
struct io_event {int dummy; } ;
struct TYPE_4__ {struct mm_struct* mm; } ;


 int EAGAIN ;
 int EINVAL ;
 int ENOMEM ;
 struct kioctx* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int INIT_LIST_HEAD (int *) ;
 int __put_ioctx (struct kioctx*) ;
 int aio_kick_handler ;
 unsigned long aio_max_nr ;
 unsigned int aio_nr ;
 int aio_nr_lock ;
 scalar_t__ aio_setup_ring (struct kioctx*) ;
 int atomic_inc (int *) ;
 int atomic_set (int *,int) ;
 TYPE_2__* current ;
 int dprintk (char*,struct kioctx*,...) ;
 int hlist_add_head_rcu (int *,int *) ;
 int init_waitqueue_head (int *) ;
 int kioctx_cachep ;
 int kmem_cache_free (int ,struct kioctx*) ;
 struct kioctx* kmem_cache_zalloc (int ,int ) ;
 int mmdrop (struct mm_struct*) ;
 int pr_debug (char*) ;
 int spin_lock (int *) ;
 int spin_lock_bh (int *) ;
 int spin_lock_init (int *) ;
 int spin_unlock (int *) ;
 int spin_unlock_bh (int *) ;
 int synchronize_rcu () ;

__attribute__((used)) static struct kioctx *ioctx_alloc(unsigned nr_events)
{
 struct mm_struct *mm;
 struct kioctx *ctx;
 int did_sync = 0;


 if ((nr_events > (0x10000000U / sizeof(struct io_event))) ||
     (nr_events > (0x10000000U / sizeof(struct kiocb)))) {
  pr_debug("ENOMEM: nr_events too high\n");
  return ERR_PTR(-EINVAL);
 }

 if ((unsigned long)nr_events > aio_max_nr)
  return ERR_PTR(-EAGAIN);

 ctx = kmem_cache_zalloc(kioctx_cachep, GFP_KERNEL);
 if (!ctx)
  return ERR_PTR(-ENOMEM);

 ctx->max_reqs = nr_events;
 mm = ctx->mm = current->mm;
 atomic_inc(&mm->mm_count);

 atomic_set(&ctx->users, 2);
 spin_lock_init(&ctx->ctx_lock);
 spin_lock_init(&ctx->ring_info.ring_lock);
 init_waitqueue_head(&ctx->wait);

 INIT_LIST_HEAD(&ctx->active_reqs);
 INIT_LIST_HEAD(&ctx->run_list);
 INIT_DELAYED_WORK(&ctx->wq, aio_kick_handler);

 if (aio_setup_ring(ctx) < 0)
  goto out_freectx;


 do {
  spin_lock_bh(&aio_nr_lock);
  if (aio_nr + nr_events > aio_max_nr ||
      aio_nr + nr_events < aio_nr)
   ctx->max_reqs = 0;
  else
   aio_nr += ctx->max_reqs;
  spin_unlock_bh(&aio_nr_lock);
  if (ctx->max_reqs || did_sync)
   break;


  synchronize_rcu();
  did_sync = 1;
  ctx->max_reqs = nr_events;
 } while (1);

 if (ctx->max_reqs == 0)
  goto out_cleanup;


 spin_lock(&mm->ioctx_lock);
 hlist_add_head_rcu(&ctx->list, &mm->ioctx_list);
 spin_unlock(&mm->ioctx_lock);

 dprintk("aio: allocated ioctx %p[%ld]: mm=%p mask=0x%x\n",
  ctx, ctx->user_id, current->mm, ctx->ring_info.nr);
 return ctx;

out_cleanup:
 __put_ioctx(ctx);
 return ERR_PTR(-EAGAIN);

out_freectx:
 mmdrop(mm);
 kmem_cache_free(kioctx_cachep, ctx);
 ctx = ERR_PTR(-ENOMEM);

 dprintk("aio: error allocating ioctx %p\n", ctx);
 return ctx;
}
