
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct snd_soc_dai {int dummy; } ;
struct TYPE_4__ {int * pm; } ;


 int PSC_CTRL (TYPE_1__*) ;
 int PSC_CTRL_DISABLE ;
 int PSC_SEL (TYPE_1__*) ;
 TYPE_1__* au1xpsc_i2s_workdata ;
 int au_sync () ;
 int au_writel (int ,int ) ;

__attribute__((used)) static int au1xpsc_i2s_resume(struct snd_soc_dai *cpu_dai)
{

 au_writel(PSC_CTRL_DISABLE, PSC_CTRL(au1xpsc_i2s_workdata));
 au_sync();
 au_writel(0, PSC_SEL(au1xpsc_i2s_workdata));
 au_sync();
 au_writel(au1xpsc_i2s_workdata->pm[0],
   PSC_SEL(au1xpsc_i2s_workdata));
 au_sync();

 return 0;
}
