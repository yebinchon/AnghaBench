
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int end; int start; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct mx3fb_data {int backlight_level; int reg_base; struct device* dev; int lock; } ;
struct dma_chan_request {int id; struct mx3fb_data* mx3fb; } ;
struct dma_chan {int dummy; } ;
typedef int dma_cap_mask_t ;


 int DMA_PRIVATE ;
 int DMA_SLAVE ;
 int EBUSY ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IDMAC_SDC_0 ;
 int IORESOURCE_MEM ;
 int chan_filter ;
 int dev_err (struct device*,char*) ;
 int dma_cap_set (int ,int ) ;
 int dma_cap_zero (int ) ;
 int dma_release_channel (struct dma_chan*) ;
 struct dma_chan* dma_request_channel (int ,int ,struct dma_chan_request*) ;
 int dmaengine_get () ;
 int dmaengine_put () ;
 int init_fb_chan (struct mx3fb_data*,int ) ;
 int ioremap (int ,int ) ;
 int iounmap (int ) ;
 int kfree (struct mx3fb_data*) ;
 struct mx3fb_data* kzalloc (int,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct mx3fb_data*) ;
 int pr_debug (char*,int ,int ,int ) ;
 int resource_size (struct resource*) ;
 int spin_lock_init (int *) ;
 int to_idmac_chan (struct dma_chan*) ;

__attribute__((used)) static int mx3fb_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 int ret;
 struct resource *sdc_reg;
 struct mx3fb_data *mx3fb;
 dma_cap_mask_t mask;
 struct dma_chan *chan;
 struct dma_chan_request rq;





 sdc_reg = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 if (!sdc_reg)
  return -EINVAL;

 mx3fb = kzalloc(sizeof(*mx3fb), GFP_KERNEL);
 if (!mx3fb)
  return -ENOMEM;

 spin_lock_init(&mx3fb->lock);

 mx3fb->reg_base = ioremap(sdc_reg->start, resource_size(sdc_reg));
 if (!mx3fb->reg_base) {
  ret = -ENOMEM;
  goto eremap;
 }

 pr_debug("Remapped %x to %x at %p\n", sdc_reg->start, sdc_reg->end,
   mx3fb->reg_base);


 dmaengine_get();

 mx3fb->dev = dev;
 platform_set_drvdata(pdev, mx3fb);

 rq.mx3fb = mx3fb;

 dma_cap_zero(mask);
 dma_cap_set(DMA_SLAVE, mask);
 dma_cap_set(DMA_PRIVATE, mask);
 rq.id = IDMAC_SDC_0;
 chan = dma_request_channel(mask, chan_filter, &rq);
 if (!chan) {
  ret = -EBUSY;
  goto ersdc0;
 }

 ret = init_fb_chan(mx3fb, to_idmac_chan(chan));
 if (ret < 0)
  goto eisdc0;

 mx3fb->backlight_level = 255;

 return 0;

eisdc0:
 dma_release_channel(chan);
ersdc0:
 dmaengine_put();
 iounmap(mx3fb->reg_base);
eremap:
 kfree(mx3fb);
 dev_err(dev, "mx3fb: failed to register fb\n");
 return ret;
}
