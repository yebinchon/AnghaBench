
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sh_mobile_lcdc_priv {int lddckr; int dev; int hw_usecnt; int dot_clk; } ;
struct platform_device {int dev; } ;


 int EINVAL ;
 scalar_t__ IS_ERR (int ) ;



 int PTR_ERR (int ) ;
 int atomic_set (int *,int) ;
 int clk_get (int *,char*) ;
 int dev_err (int *,char*,char*) ;
 int pm_runtime_enable (int ) ;
 int pm_runtime_resume (int ) ;

__attribute__((used)) static int sh_mobile_lcdc_setup_clocks(struct platform_device *pdev,
           int clock_source,
           struct sh_mobile_lcdc_priv *priv)
{
 char *str;
 int icksel;

 switch (clock_source) {
 case 130: str = "bus_clk"; icksel = 0; break;
 case 128: str = "peripheral_clk"; icksel = 1; break;
 case 129: str = ((void*)0); icksel = 2; break;
 default:
  return -EINVAL;
 }

 priv->lddckr = icksel << 16;

 if (str) {
  priv->dot_clk = clk_get(&pdev->dev, str);
  if (IS_ERR(priv->dot_clk)) {
   dev_err(&pdev->dev, "cannot get dot clock %s\n", str);
   return PTR_ERR(priv->dot_clk);
  }
 }
 atomic_set(&priv->hw_usecnt, -1);





 pm_runtime_enable(priv->dev);
 pm_runtime_resume(priv->dev);
 return 0;
}
