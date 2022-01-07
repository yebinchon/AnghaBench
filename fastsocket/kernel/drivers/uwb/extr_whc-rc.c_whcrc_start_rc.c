
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct whcrc {scalar_t__ rc_base; TYPE_1__* umc_dev; } ;
struct uwb_rc {struct whcrc* priv; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;


 int EBUSY ;
 int ETIMEDOUT ;
 scalar_t__ URCCMD ;
 int URCCMD_RESET ;
 int URCCMD_RS ;
 scalar_t__ URCINTR ;
 int URCINTR_EN_ALL ;
 scalar_t__ URCSTS ;
 int URCSTS_HALTED ;
 int le_writel (int ,scalar_t__) ;
 scalar_t__ whci_wait_for (struct device*,scalar_t__,int ,int ,int,char*) ;
 int whcrc_enable_events (struct whcrc*) ;

__attribute__((used)) static int whcrc_start_rc(struct uwb_rc *rc)
{
 struct whcrc *whcrc = rc->priv;
 struct device *dev = &whcrc->umc_dev->dev;


 le_writel(URCCMD_RESET, whcrc->rc_base + URCCMD);
 if (whci_wait_for(dev, whcrc->rc_base + URCCMD, URCCMD_RESET, 0,
     5000, "hardware reset") < 0)
  return -EBUSY;


 le_writel(0, whcrc->rc_base + URCINTR);
 le_writel(URCCMD_RS, whcrc->rc_base + URCCMD);
 if (whci_wait_for(dev, whcrc->rc_base + URCSTS, URCSTS_HALTED, 0,
     5000, "radio controller start") < 0)
  return -ETIMEDOUT;
 whcrc_enable_events(whcrc);
 le_writel(URCINTR_EN_ALL, whcrc->rc_base + URCINTR);
 return 0;
}
