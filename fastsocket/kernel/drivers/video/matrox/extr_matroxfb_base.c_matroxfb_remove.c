
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int base; int vbase; } ;
struct TYPE_5__ {int len_maximum; int base; int vbase; int len; } ;
struct TYPE_4__ {int vram; scalar_t__ vram_valid; } ;
struct matrox_fb_info {int dead; TYPE_3__ mmio; TYPE_2__ video; TYPE_1__ mtrr; int fbcon; scalar_t__ usecount; } ;


 int kfree (struct matrox_fb_info*) ;
 int matroxfb_g450_shutdown (struct matrox_fb_info*) ;
 int matroxfb_unregister_device (struct matrox_fb_info*) ;
 int mga_iounmap (int ) ;
 int mtrr_del (int ,int ,int ) ;
 int release_mem_region (int ,int) ;
 int unregister_framebuffer (int *) ;

__attribute__((used)) static void matroxfb_remove(struct matrox_fb_info *minfo, int dummy)
{
 minfo->dead = 1;
 if (minfo->usecount) {

  return;
 }
 matroxfb_unregister_device(minfo);
 unregister_framebuffer(&minfo->fbcon);
 matroxfb_g450_shutdown(minfo);




 mga_iounmap(minfo->mmio.vbase);
 mga_iounmap(minfo->video.vbase);
 release_mem_region(minfo->video.base, minfo->video.len_maximum);
 release_mem_region(minfo->mmio.base, 16384);
 kfree(minfo);
}
