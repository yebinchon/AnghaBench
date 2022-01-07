
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sh_mobile_lcdc_priv {int * saved_shared_regs; struct sh_mobile_lcdc_chan* ch; } ;
struct sh_mobile_lcdc_chan {int * saved_ch_regs; int enabled; } ;
struct platform_device {int dummy; } ;
struct device {int dummy; } ;


 int ARRAY_SIZE (struct sh_mobile_lcdc_chan*) ;
 int NR_CH_REGS ;
 int NR_SHARED_REGS ;
 int * lcdc_shared_regs ;
 int lcdc_write (struct sh_mobile_lcdc_priv*,int ,int ) ;
 int lcdc_write_chan (struct sh_mobile_lcdc_chan*,int,int ) ;
 struct sh_mobile_lcdc_priv* platform_get_drvdata (struct platform_device*) ;
 struct platform_device* to_platform_device (struct device*) ;

__attribute__((used)) static int sh_mobile_lcdc_runtime_resume(struct device *dev)
{
 struct platform_device *pdev = to_platform_device(dev);
 struct sh_mobile_lcdc_priv *p = platform_get_drvdata(pdev);
 struct sh_mobile_lcdc_chan *ch;
 int k, n;


 for (k = 0; k < ARRAY_SIZE(p->ch); k++) {
  ch = &p->ch[k];
  if (!ch->enabled)
   continue;
  for (n = 0; n < NR_CH_REGS; n++)
   lcdc_write_chan(ch, n, ch->saved_ch_regs[n]);
 }


 for (n = 0; n < NR_SHARED_REGS; n++)
  lcdc_write(p, lcdc_shared_regs[n], p->saved_shared_regs[n]);

 return 0;
}
