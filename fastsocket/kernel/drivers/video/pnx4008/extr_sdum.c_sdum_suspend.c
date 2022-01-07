
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct clk {int dummy; } ;
typedef int pm_message_t ;


 int DUM_CTRL ;
 int IS_ERR (struct clk*) ;
 int PTR_ERR (struct clk*) ;
 int V_BAC_DISABLE_IDLE ;
 struct clk* clk_get (int ,char*) ;
 int clk_put (struct clk*) ;
 int clk_set_rate (struct clk*,int ) ;
 int lcd_reset () ;

__attribute__((used)) static int sdum_suspend(struct platform_device *pdev, pm_message_t state)
{
 int retval = 0;
 struct clk *clk;

 clk = clk_get(0, "dum_ck");
 if (!IS_ERR(clk)) {
  clk_set_rate(clk, 0);
  clk_put(clk);
 } else
  retval = PTR_ERR(clk);


 DUM_CTRL = V_BAC_DISABLE_IDLE;


 lcd_reset();

 return retval;
}
