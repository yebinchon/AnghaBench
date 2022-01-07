
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct et131x_adapter {scalar_t__ linkspeed; TYPE_4__* regs; } ;
struct TYPE_6__ {int value; } ;
struct TYPE_5__ {int value; } ;
struct TYPE_7__ {TYPE_2__ num_pkt_done; TYPE_1__ max_pkt_time; } ;
struct TYPE_8__ {TYPE_3__ rxdma; } ;


 scalar_t__ TRUEPHY_SPEED_100MBPS ;
 scalar_t__ TRUEPHY_SPEED_10MBPS ;
 int writel (int,int *) ;

void SetRxDmaTimer(struct et131x_adapter *etdev)
{



 if ((etdev->linkspeed == TRUEPHY_SPEED_100MBPS) ||
     (etdev->linkspeed == TRUEPHY_SPEED_10MBPS)) {
  writel(0, &etdev->regs->rxdma.max_pkt_time.value);
  writel(1, &etdev->regs->rxdma.num_pkt_done.value);
 }
}
