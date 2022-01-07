
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct snd_soc_dai {int dummy; } ;
struct platform_device {int dummy; } ;
struct TYPE_6__ {struct TYPE_6__* ioarea; int mmio; } ;


 int I2S_CFG (TYPE_1__*) ;
 int PSC_CTRL (TYPE_1__*) ;
 int PSC_CTRL_DISABLE ;
 TYPE_1__* au1xpsc_i2s_workdata ;
 int au_sync () ;
 int au_writel (int ,int ) ;
 int iounmap (int ) ;
 int kfree (TYPE_1__*) ;
 int release_resource (TYPE_1__*) ;

__attribute__((used)) static void au1xpsc_i2s_remove(struct platform_device *pdev,
          struct snd_soc_dai *dai)
{
 au_writel(0, I2S_CFG(au1xpsc_i2s_workdata));
 au_sync();
 au_writel(PSC_CTRL_DISABLE, PSC_CTRL(au1xpsc_i2s_workdata));
 au_sync();

 iounmap(au1xpsc_i2s_workdata->mmio);
 release_resource(au1xpsc_i2s_workdata->ioarea);
 kfree(au1xpsc_i2s_workdata->ioarea);
 kfree(au1xpsc_i2s_workdata);
 au1xpsc_i2s_workdata = ((void*)0);
}
