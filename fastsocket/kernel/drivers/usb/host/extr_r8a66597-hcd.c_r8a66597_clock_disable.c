
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct r8a66597 {int clk; TYPE_1__* pdata; } ;
struct TYPE_2__ {scalar_t__ on_chip; } ;


 int PLLC ;
 int SCKE ;
 int SYSCFG0 ;
 int USBE ;
 int XCKE ;
 int clk_disable (int ) ;
 int r8a66597_bclr (struct r8a66597*,int ,int ) ;
 int udelay (int) ;

__attribute__((used)) static void r8a66597_clock_disable(struct r8a66597 *r8a66597)
{
 r8a66597_bclr(r8a66597, SCKE, SYSCFG0);
 udelay(1);

 if (r8a66597->pdata->on_chip) {



 } else {
  r8a66597_bclr(r8a66597, PLLC, SYSCFG0);
  r8a66597_bclr(r8a66597, XCKE, SYSCFG0);
  r8a66597_bclr(r8a66597, USBE, SYSCFG0);
 }
}
