
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct aio_ring_info {long nr_pages; scalar_t__ nr; int * ring_pages; int * internal_pages; scalar_t__ mmap_size; int mmap_base; } ;
struct kioctx {TYPE_1__* mm; struct aio_ring_info ring_info; } ;
struct TYPE_2__ {int mmap_sem; } ;


 int do_munmap (TYPE_1__*,int ,scalar_t__) ;
 int down_write (int *) ;
 int kfree (int *) ;
 int put_page (int ) ;
 int up_write (int *) ;

__attribute__((used)) static void aio_free_ring(struct kioctx *ctx)
{
 struct aio_ring_info *info = &ctx->ring_info;
 long i;

 for (i=0; i<info->nr_pages; i++)
  put_page(info->ring_pages[i]);

 if (info->mmap_size) {
  down_write(&ctx->mm->mmap_sem);
  do_munmap(ctx->mm, info->mmap_base, info->mmap_size);
  up_write(&ctx->mm->mmap_sem);
 }

 if (info->ring_pages && info->ring_pages != info->internal_pages)
  kfree(info->ring_pages);
 info->ring_pages = ((void*)0);
 info->nr = 0;
}
