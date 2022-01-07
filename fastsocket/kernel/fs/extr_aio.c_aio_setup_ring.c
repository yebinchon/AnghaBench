
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {int dummy; } ;
struct aio_ring_info {unsigned int nr; int mmap_size; int mmap_base; int nr_pages; int * ring_pages; int * internal_pages; } ;
struct kioctx {unsigned int max_reqs; int user_id; TYPE_1__* mm; struct aio_ring_info ring_info; } ;
struct io_event {int dummy; } ;
struct aio_ring {unsigned int nr; int id; int header_length; int incompat_features; int compat_features; int magic; scalar_t__ tail; scalar_t__ head; } ;
struct TYPE_2__ {int mmap_sem; } ;


 int AIO_RING_COMPAT_FEATURES ;
 int AIO_RING_INCOMPAT_FEATURES ;
 int AIO_RING_MAGIC ;
 int AIO_RING_PAGES ;
 int EAGAIN ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (void*) ;
 int KM_USER0 ;
 int MAP_ANONYMOUS ;
 int MAP_PRIVATE ;
 unsigned long PAGE_SHIFT ;
 unsigned long PAGE_SIZE ;
 int PROT_READ ;
 int PROT_WRITE ;
 int aio_free_ring (struct kioctx*) ;
 int current ;
 int do_mmap (int *,int ,int,int,int,int ) ;
 int down_write (int *) ;
 int dprintk (char*,int) ;
 int get_user_pages (int ,TYPE_1__*,int,int,int,int ,int *,int *) ;
 int * kcalloc (int,int,int ) ;
 struct aio_ring* kmap_atomic (int ,int ) ;
 int kunmap_atomic (struct aio_ring*,int ) ;
 scalar_t__ unlikely (int) ;
 int up_write (int *) ;

__attribute__((used)) static int aio_setup_ring(struct kioctx *ctx)
{
 struct aio_ring *ring;
 struct aio_ring_info *info = &ctx->ring_info;
 unsigned nr_events = ctx->max_reqs;
 unsigned long size;
 int nr_pages;


 nr_events += 2;

 size = sizeof(struct aio_ring);
 size += sizeof(struct io_event) * nr_events;
 nr_pages = (size + PAGE_SIZE-1) >> PAGE_SHIFT;

 if (nr_pages < 0)
  return -EINVAL;

 nr_events = (PAGE_SIZE * nr_pages - sizeof(struct aio_ring)) / sizeof(struct io_event);

 info->nr = 0;
 info->ring_pages = info->internal_pages;
 if (nr_pages > AIO_RING_PAGES) {
  info->ring_pages = kcalloc(nr_pages, sizeof(struct page *), GFP_KERNEL);
  if (!info->ring_pages)
   return -ENOMEM;
 }

 info->mmap_size = nr_pages * PAGE_SIZE;
 dprintk("attempting mmap of %lu bytes\n", info->mmap_size);
 down_write(&ctx->mm->mmap_sem);
 info->mmap_base = do_mmap(((void*)0), 0, info->mmap_size,
      PROT_READ|PROT_WRITE, MAP_ANONYMOUS|MAP_PRIVATE,
      0);
 if (IS_ERR((void *)info->mmap_base)) {
  up_write(&ctx->mm->mmap_sem);
  info->mmap_size = 0;
  aio_free_ring(ctx);
  return -EAGAIN;
 }

 dprintk("mmap address: 0x%08lx\n", info->mmap_base);
 info->nr_pages = get_user_pages(current, ctx->mm,
     info->mmap_base, nr_pages,
     1, 0, info->ring_pages, ((void*)0));
 up_write(&ctx->mm->mmap_sem);

 if (unlikely(info->nr_pages != nr_pages)) {
  aio_free_ring(ctx);
  return -EAGAIN;
 }

 ctx->user_id = info->mmap_base;

 info->nr = nr_events;

 ring = kmap_atomic(info->ring_pages[0], KM_USER0);
 ring->nr = nr_events;
 ring->id = ctx->user_id;
 ring->head = ring->tail = 0;
 ring->magic = AIO_RING_MAGIC;
 ring->compat_features = AIO_RING_COMPAT_FEATURES;
 ring->incompat_features = AIO_RING_INCOMPAT_FEATURES;
 ring->header_length = sizeof(struct aio_ring);
 kunmap_atomic(ring, KM_USER0);

 return 0;
}
