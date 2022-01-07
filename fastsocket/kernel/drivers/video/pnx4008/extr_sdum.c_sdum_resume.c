
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct clk {int dummy; } ;


 int BAC_ENABLED ;
 int DUM_CTRL ;
 int IS_ERR (struct clk*) ;
 int PTR_ERR (struct clk*) ;
 int V_BAC_DISABLE_TRIG ;
 int V_BAC_ENABLE ;
 int V_MUX_RESET ;
 struct clk* clk_get (int ,char*) ;
 int clk_put (struct clk*) ;
 int clk_set_rate (struct clk*,int) ;
 int lcd_init () ;
 int udelay (int) ;

__attribute__((used)) static int sdum_resume(struct platform_device *pdev)
{
 int retval = 0;
 struct clk *clk;

 clk = clk_get(0, "dum_ck");
 if (!IS_ERR(clk)) {
  clk_set_rate(clk, 1);
  clk_put(clk);
 } else
  retval = PTR_ERR(clk);


 DUM_CTRL = V_BAC_DISABLE_TRIG;

 while (DUM_CTRL & BAC_ENABLED)
  udelay(10);


 lcd_init();


 DUM_CTRL = V_BAC_ENABLE;
 udelay(1);
 DUM_CTRL = V_MUX_RESET;
 return 0;
}
