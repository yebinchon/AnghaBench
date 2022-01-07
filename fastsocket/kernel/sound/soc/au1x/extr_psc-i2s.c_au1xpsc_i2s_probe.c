
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct snd_soc_dai {int dummy; } ;
struct resource {scalar_t__ start; scalar_t__ end; } ;
struct platform_device {int dummy; } ;
struct au1xpsc_audio_data {int dummy; } ;
struct TYPE_9__ {int cfg; struct TYPE_9__* ioarea; int mmio; } ;


 int EBUSY ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int I2S_CFG (TYPE_1__*) ;
 int IORESOURCE_MEM ;
 int PSC_CTRL (TYPE_1__*) ;
 unsigned long PSC_CTRL_DISABLE ;
 int PSC_I2SCFG_RT_FIFO8 ;
 int PSC_I2SCFG_TT_FIFO8 ;
 int PSC_SEL (TYPE_1__*) ;
 unsigned long PSC_SEL_CLK_MASK ;
 unsigned long PSC_SEL_PS_I2SMODE ;
 TYPE_1__* au1xpsc_i2s_workdata ;
 unsigned long au_readl (int ) ;
 int au_sync () ;
 int au_writel (unsigned long,int ) ;
 int ioremap (scalar_t__,int) ;
 int kfree (TYPE_1__*) ;
 TYPE_1__* kzalloc (int,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int release_resource (TYPE_1__*) ;
 TYPE_1__* request_mem_region (scalar_t__,scalar_t__,char*) ;

__attribute__((used)) static int au1xpsc_i2s_probe(struct platform_device *pdev,
        struct snd_soc_dai *dai)
{
 struct resource *r;
 unsigned long sel;
 int ret;

 if (au1xpsc_i2s_workdata)
  return -EBUSY;

 au1xpsc_i2s_workdata =
  kzalloc(sizeof(struct au1xpsc_audio_data), GFP_KERNEL);
 if (!au1xpsc_i2s_workdata)
  return -ENOMEM;

 r = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 if (!r) {
  ret = -ENODEV;
  goto out0;
 }

 ret = -EBUSY;
 au1xpsc_i2s_workdata->ioarea =
  request_mem_region(r->start, r->end - r->start + 1,
     "au1xpsc_i2s");
 if (!au1xpsc_i2s_workdata->ioarea)
  goto out0;

 au1xpsc_i2s_workdata->mmio = ioremap(r->start, 0xffff);
 if (!au1xpsc_i2s_workdata->mmio)
  goto out1;




 sel = au_readl(PSC_SEL(au1xpsc_i2s_workdata)) & PSC_SEL_CLK_MASK;
 au_writel(PSC_CTRL_DISABLE, PSC_CTRL(au1xpsc_i2s_workdata));
 au_sync();
 au_writel(PSC_SEL_PS_I2SMODE | sel, PSC_SEL(au1xpsc_i2s_workdata));
 au_writel(0, I2S_CFG(au1xpsc_i2s_workdata));
 au_sync();


 au1xpsc_i2s_workdata->cfg |=
   PSC_I2SCFG_RT_FIFO8 | PSC_I2SCFG_TT_FIFO8;






 return 0;

out1:
 release_resource(au1xpsc_i2s_workdata->ioarea);
 kfree(au1xpsc_i2s_workdata->ioarea);
out0:
 kfree(au1xpsc_i2s_workdata);
 au1xpsc_i2s_workdata = ((void*)0);
 return ret;
}
