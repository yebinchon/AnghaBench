
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sh_mobile_lcdc_priv {scalar_t__ dot_clk; int dev; int hw_usecnt; } ;


 scalar_t__ atomic_inc_and_test (int *) ;
 int clk_enable (scalar_t__) ;
 int pm_runtime_get_sync (int ) ;

__attribute__((used)) static void sh_mobile_lcdc_clk_on(struct sh_mobile_lcdc_priv *priv)
{
 if (atomic_inc_and_test(&priv->hw_usecnt)) {
  pm_runtime_get_sync(priv->dev);
  if (priv->dot_clk)
   clk_enable(priv->dot_clk);
 }
}
