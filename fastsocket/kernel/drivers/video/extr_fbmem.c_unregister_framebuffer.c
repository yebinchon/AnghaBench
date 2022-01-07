
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int flags; scalar_t__ addr; } ;
struct fb_info {int node; TYPE_2__* fbops; int modelist; TYPE_1__ pixmap; } ;
struct fb_event {struct fb_info* info; } ;
struct TYPE_4__ {int (* fb_destroy ) (struct fb_info*) ;} ;


 int EINVAL ;
 int ENODEV ;
 int FB_EVENT_FB_UNBIND ;
 int FB_EVENT_FB_UNREGISTERED ;
 int FB_MAJOR ;
 int FB_PIXMAP_DEFAULT ;
 int MKDEV (int ,int) ;
 int device_destroy (int ,int ) ;
 int fb_class ;
 int fb_cleanup_device (struct fb_info*) ;
 int fb_destroy_modelist (int *) ;
 int fb_notifier_call_chain (int ,struct fb_event*) ;
 int kfree (scalar_t__) ;
 int lock_fb_info (struct fb_info*) ;
 int num_registered_fb ;
 int ** registered_fb ;
 int stub1 (struct fb_info*) ;
 int unlock_fb_info (struct fb_info*) ;

int
unregister_framebuffer(struct fb_info *fb_info)
{
 struct fb_event event;
 int i, ret = 0;

 i = fb_info->node;
 if (!registered_fb[i]) {
  ret = -EINVAL;
  goto done;
 }


 if (!lock_fb_info(fb_info))
  return -ENODEV;
 event.info = fb_info;
 ret = fb_notifier_call_chain(FB_EVENT_FB_UNBIND, &event);
 unlock_fb_info(fb_info);

 if (ret) {
  ret = -EINVAL;
  goto done;
 }

 if (fb_info->pixmap.addr &&
     (fb_info->pixmap.flags & FB_PIXMAP_DEFAULT))
  kfree(fb_info->pixmap.addr);
 fb_destroy_modelist(&fb_info->modelist);
 registered_fb[i]=((void*)0);
 num_registered_fb--;
 fb_cleanup_device(fb_info);
 device_destroy(fb_class, MKDEV(FB_MAJOR, i));
 event.info = fb_info;
 fb_notifier_call_chain(FB_EVENT_FB_UNREGISTERED, &event);


 if (fb_info->fbops->fb_destroy)
  fb_info->fbops->fb_destroy(fb_info);
done:
 return ret;
}
