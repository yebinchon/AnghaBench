
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ len; } ;
struct TYPE_5__ {TYPE_3__ cmap; } ;
struct clcd_fb {TYPE_1__* board; int clk; int regs; TYPE_2__ fb; } ;
struct amba_device {int dummy; } ;
struct TYPE_4__ {int (* remove ) (struct clcd_fb*) ;} ;


 struct clcd_fb* amba_get_drvdata (struct amba_device*) ;
 int amba_release_regions (struct amba_device*) ;
 int amba_set_drvdata (struct amba_device*,int *) ;
 int clcdfb_disable (struct clcd_fb*) ;
 int clk_put (int ) ;
 int fb_dealloc_cmap (TYPE_3__*) ;
 int iounmap (int ) ;
 int kfree (struct clcd_fb*) ;
 int stub1 (struct clcd_fb*) ;
 int unregister_framebuffer (TYPE_2__*) ;

__attribute__((used)) static int clcdfb_remove(struct amba_device *dev)
{
 struct clcd_fb *fb = amba_get_drvdata(dev);

 amba_set_drvdata(dev, ((void*)0));

 clcdfb_disable(fb);
 unregister_framebuffer(&fb->fb);
 if (fb->fb.cmap.len)
  fb_dealloc_cmap(&fb->fb.cmap);
 iounmap(fb->regs);
 clk_put(fb->clk);

 fb->board->remove(fb);

 kfree(fb);

 amba_release_regions(dev);

 return 0;
}
