
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct snd_soc_dai {int dummy; } ;
struct TYPE_3__ {int* pm; } ;


 int PSC_SEL (TYPE_1__*) ;
 int PSC_SEL_PS_AC97MODE ;
 TYPE_1__* au1xpsc_ac97_workdata ;
 int au_sync () ;
 int au_writel (int,int ) ;

__attribute__((used)) static int au1xpsc_ac97_resume(struct snd_soc_dai *dai)
{

 au_writel(au1xpsc_ac97_workdata->pm[0] | PSC_SEL_PS_AC97MODE,
   PSC_SEL(au1xpsc_ac97_workdata));
 au_sync();





 return 0;
}
