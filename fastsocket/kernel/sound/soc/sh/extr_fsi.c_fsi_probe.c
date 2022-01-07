
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;
typedef struct TYPE_12__ TYPE_10__ ;


struct resource {int start; } ;
struct TYPE_12__ {int platform_data; } ;
struct platform_device {int id; TYPE_10__ dev; } ;
typedef int clk_name ;
struct TYPE_14__ {int dma_chan; scalar_t__ base; } ;
struct TYPE_13__ {int dma_chan; scalar_t__ base; } ;
struct TYPE_16__ {unsigned int irq; scalar_t__ base; int clk; TYPE_2__ fsib; TYPE_1__ fsia; int info; } ;
struct TYPE_15__ {TYPE_10__* dev; } ;


 int ARRAY_SIZE (TYPE_3__*) ;
 int EIO ;
 int ENODEV ;
 int ENOMEM ;
 int ENXIO ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 int IRQF_DISABLED ;
 scalar_t__ IS_ERR (int ) ;
 int clk_get (int *,char*) ;
 int dev_err (TYPE_10__*,char*,...) ;
 int free_irq (unsigned int,TYPE_4__*) ;
 int fsi_free_dma_chan () ;
 int fsi_get_dma_chan () ;
 int fsi_interrupt ;
 TYPE_3__* fsi_soc_dai ;
 int fsi_soc_platform ;
 int fsi_soft_all_reset () ;
 scalar_t__ ioremap_nocache (int ,int ) ;
 int iounmap (scalar_t__) ;
 int kfree (TYPE_4__*) ;
 TYPE_4__* kzalloc (int,int ) ;
 TYPE_4__* master ;
 unsigned int platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int request_irq (unsigned int,int *,int ,char*,TYPE_4__*) ;
 int resource_size (struct resource*) ;
 int snd_soc_register_dais (TYPE_3__*,int ) ;
 int snd_soc_register_platform (int *) ;
 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static int fsi_probe(struct platform_device *pdev)
{
 struct resource *res;
 char clk_name[8];
 unsigned int irq;
 int ret;

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 irq = platform_get_irq(pdev, 0);
 if (!res || !irq) {
  dev_err(&pdev->dev, "Not enough FSI platform resources.\n");
  ret = -ENODEV;
  goto exit;
 }

 master = kzalloc(sizeof(*master), GFP_KERNEL);
 if (!master) {
  dev_err(&pdev->dev, "Could not allocate master\n");
  ret = -ENOMEM;
  goto exit;
 }

 master->base = ioremap_nocache(res->start, resource_size(res));
 if (!master->base) {
  ret = -ENXIO;
  dev_err(&pdev->dev, "Unable to ioremap FSI registers.\n");
  goto exit_kfree;
 }

 master->irq = irq;
 master->info = pdev->dev.platform_data;
 master->fsia.base = master->base;
 master->fsib.base = master->base + 0x40;

 master->fsia.dma_chan = -1;
 master->fsib.dma_chan = -1;

 ret = fsi_get_dma_chan();
 if (ret < 0) {
  dev_err(&pdev->dev, "cannot get dma api\n");
  goto exit_iounmap;
 }


 snprintf(clk_name, sizeof(clk_name), "spu%d", pdev->id);
 master->clk = clk_get(((void*)0), clk_name);
 if (IS_ERR(master->clk)) {
  dev_err(&pdev->dev, "cannot get %s mstp\n", clk_name);
  ret = -EIO;
  goto exit_free_dma;
 }

 fsi_soc_dai[0].dev = &pdev->dev;
 fsi_soc_dai[1].dev = &pdev->dev;

 fsi_soft_all_reset();

 ret = request_irq(irq, &fsi_interrupt, IRQF_DISABLED, "fsi", master);
 if (ret) {
  dev_err(&pdev->dev, "irq request err\n");
  goto exit_free_dma;
 }

 ret = snd_soc_register_platform(&fsi_soc_platform);
 if (ret < 0) {
  dev_err(&pdev->dev, "cannot snd soc register\n");
  goto exit_free_irq;
 }

 return snd_soc_register_dais(fsi_soc_dai, ARRAY_SIZE(fsi_soc_dai));

exit_free_irq:
 free_irq(irq, master);
exit_free_dma:
 fsi_free_dma_chan();
exit_iounmap:
 iounmap(master->base);
exit_kfree:
 kfree(master);
 master = ((void*)0);
exit:
 return ret;
}
