
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct snd_soc_dai {int dummy; } ;
struct TYPE_5__ {int * pm; } ;


 int AC97_CFG (TYPE_1__*) ;
 int PSC_CTRL (TYPE_1__*) ;
 int PSC_CTRL_DISABLE ;
 int PSC_SEL (TYPE_1__*) ;
 TYPE_1__* au1xpsc_ac97_workdata ;
 int au_readl (int ) ;
 int au_sync () ;
 int au_writel (int ,int ) ;

__attribute__((used)) static int au1xpsc_ac97_suspend(struct snd_soc_dai *dai)
{

 au1xpsc_ac97_workdata->pm[0] =
   au_readl(PSC_SEL(au1xpsc_ac97_workdata));

 au_writel(0, AC97_CFG(au1xpsc_ac97_workdata));
 au_sync();
 au_writel(PSC_CTRL_DISABLE, PSC_CTRL(au1xpsc_ac97_workdata));
 au_sync();

 return 0;
}
