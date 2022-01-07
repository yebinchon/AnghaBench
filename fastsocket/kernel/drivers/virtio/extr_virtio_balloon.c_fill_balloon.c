
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct virtio_balloon {size_t num_pfns; int inflate_vq; int pages; int num_pages; int * pfns; TYPE_1__* vdev; } ;
struct page {int lru; } ;
struct TYPE_2__ {int dev; } ;


 int ARRAY_SIZE (int *) ;
 int GFP_HIGHUSER ;
 int KERN_INFO ;
 int __GFP_NOMEMALLOC ;
 int __GFP_NORETRY ;
 int __GFP_NOWARN ;
 struct page* alloc_page (int) ;
 int dev_printk (int ,int *,char*,size_t) ;
 int list_add (int *,int *) ;
 size_t min (size_t,int ) ;
 int msleep (int) ;
 int page_to_balloon_pfn (struct page*) ;
 scalar_t__ printk_ratelimit () ;
 int tell_host (struct virtio_balloon*,int ) ;
 int totalram_pages ;

__attribute__((used)) static void fill_balloon(struct virtio_balloon *vb, size_t num)
{

 num = min(num, ARRAY_SIZE(vb->pfns));

 for (vb->num_pfns = 0; vb->num_pfns < num; vb->num_pfns++) {
  struct page *page = alloc_page(GFP_HIGHUSER | __GFP_NORETRY |
     __GFP_NOMEMALLOC | __GFP_NOWARN);
  if (!page) {
   if (printk_ratelimit())
    dev_printk(KERN_INFO, &vb->vdev->dev,
        "Out of puff! Can't get %zu pages\n",
        num);

   msleep(200);
   break;
  }
  vb->pfns[vb->num_pfns] = page_to_balloon_pfn(page);
  totalram_pages--;
  vb->num_pages++;
  list_add(&page->lru, &vb->pages);
 }


 if (vb->num_pfns == 0)
  return;

 tell_host(vb, vb->inflate_vq);
}
