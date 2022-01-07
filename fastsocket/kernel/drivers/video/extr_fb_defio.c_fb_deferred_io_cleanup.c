
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct page {int * mapping; } ;
struct TYPE_4__ {int smem_len; } ;
struct fb_info {TYPE_1__* fbops; TYPE_2__ fix; int deferred_work; struct fb_deferred_io* fbdefio; } ;
struct fb_deferred_io {int lock; } ;
struct TYPE_3__ {int * fb_mmap; } ;


 int BUG_ON (int) ;
 scalar_t__ PAGE_SIZE ;
 int cancel_delayed_work (int *) ;
 struct page* fb_deferred_io_page (struct fb_info*,int) ;
 int flush_scheduled_work () ;
 int mutex_destroy (int *) ;

void fb_deferred_io_cleanup(struct fb_info *info)
{
 struct fb_deferred_io *fbdefio = info->fbdefio;
 struct page *page;
 int i;

 BUG_ON(!fbdefio);
 cancel_delayed_work(&info->deferred_work);
 flush_scheduled_work();


 for (i = 0 ; i < info->fix.smem_len; i += PAGE_SIZE) {
  page = fb_deferred_io_page(info, i);
  page->mapping = ((void*)0);
 }

 info->fbops->fb_mmap = ((void*)0);
 mutex_destroy(&fbdefio->lock);
}
