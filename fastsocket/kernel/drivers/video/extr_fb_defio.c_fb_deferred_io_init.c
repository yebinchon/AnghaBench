
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fb_info {int deferred_work; TYPE_1__* fbops; struct fb_deferred_io* fbdefio; } ;
struct fb_deferred_io {scalar_t__ delay; int pagelist; int lock; } ;
struct TYPE_2__ {int fb_mmap; } ;


 int BUG_ON (int) ;
 scalar_t__ HZ ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int INIT_LIST_HEAD (int *) ;
 int fb_deferred_io_mmap ;
 int fb_deferred_io_work ;
 int mutex_init (int *) ;

void fb_deferred_io_init(struct fb_info *info)
{
 struct fb_deferred_io *fbdefio = info->fbdefio;

 BUG_ON(!fbdefio);
 mutex_init(&fbdefio->lock);
 info->fbops->fb_mmap = fb_deferred_io_mmap;
 INIT_DELAYED_WORK(&info->deferred_work, fb_deferred_io_work);
 INIT_LIST_HEAD(&fbdefio->pagelist);
 if (fbdefio->delay == 0)
  fbdefio->delay = HZ;
}
