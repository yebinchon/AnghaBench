
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct whc {scalar_t__ base; TYPE_1__* umc; } ;
struct TYPE_2__ {int dev; } ;


 scalar_t__ WUSBCMD ;
 int WUSBCMD_WHCRESET ;
 int le_writel (int ,scalar_t__) ;
 int whci_wait_for (int *,scalar_t__,int ,int ,int,char*) ;

__attribute__((used)) static void whc_hw_reset(struct whc *whc)
{
 le_writel(WUSBCMD_WHCRESET, whc->base + WUSBCMD);
 whci_wait_for(&whc->umc->dev, whc->base + WUSBCMD, WUSBCMD_WHCRESET, 0,
        100, "reset");
}
