
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device {int dummy; } ;
struct mx3fb_info {TYPE_1__* idmac_channel; } ;
struct mx3fb_data {int reg_base; struct fb_info* fbi; } ;
struct fb_info {struct mx3fb_info* par; } ;
struct dma_chan {int dummy; } ;
struct TYPE_2__ {struct dma_chan dma_chan; } ;


 int dma_release_channel (struct dma_chan*) ;
 int dmaengine_put () ;
 int iounmap (int ) ;
 int kfree (struct mx3fb_data*) ;
 struct mx3fb_data* platform_get_drvdata (struct platform_device*) ;
 int release_fbi (struct fb_info*) ;

__attribute__((used)) static int mx3fb_remove(struct platform_device *dev)
{
 struct mx3fb_data *mx3fb = platform_get_drvdata(dev);
 struct fb_info *fbi = mx3fb->fbi;
 struct mx3fb_info *mx3_fbi = fbi->par;
 struct dma_chan *chan;

 chan = &mx3_fbi->idmac_channel->dma_chan;
 release_fbi(fbi);

 dma_release_channel(chan);
 dmaengine_put();

 iounmap(mx3fb->reg_base);
 kfree(mx3fb);
 return 0;
}
