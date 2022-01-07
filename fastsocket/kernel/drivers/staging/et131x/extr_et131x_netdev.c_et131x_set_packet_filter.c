
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint32_t ;
struct et131x_adapter {int PacketFilter; TYPE_6__* regs; } ;
struct TYPE_9__ {int pkt_filter_disable; } ;
struct TYPE_16__ {void* value; TYPE_1__ bits; } ;
struct TYPE_10__ {int filter_broad_en; int filter_multi_en; int filter_uni_en; } ;
struct TYPE_15__ {void* value; TYPE_2__ bits; } ;
struct TYPE_12__ {int value; } ;
struct TYPE_11__ {int value; } ;
struct TYPE_13__ {TYPE_4__ ctrl; TYPE_3__ pf_ctrl; } ;
struct TYPE_14__ {TYPE_5__ rxmac; } ;
typedef TYPE_7__ RXMAC_PF_CTRL_t ;
typedef TYPE_8__ RXMAC_CTRL_t ;


 int ET131X_PACKET_TYPE_ALL_MULTICAST ;
 int ET131X_PACKET_TYPE_BROADCAST ;
 int ET131X_PACKET_TYPE_DIRECTED ;
 int ET131X_PACKET_TYPE_PROMISCUOUS ;
 int SetupDeviceForMulticast (struct et131x_adapter*) ;
 int SetupDeviceForUnicast (struct et131x_adapter*) ;
 void* readl (int *) ;
 int writel (void*,int *) ;

int et131x_set_packet_filter(struct et131x_adapter *adapter)
{
 int status = 0;
 uint32_t filter = adapter->PacketFilter;
 RXMAC_CTRL_t ctrl;
 RXMAC_PF_CTRL_t pf_ctrl;

 ctrl.value = readl(&adapter->regs->rxmac.ctrl.value);
 pf_ctrl.value = readl(&adapter->regs->rxmac.pf_ctrl.value);




 ctrl.bits.pkt_filter_disable = 1;




 if ((filter & ET131X_PACKET_TYPE_PROMISCUOUS) || filter == 0) {
  pf_ctrl.bits.filter_broad_en = 0;
  pf_ctrl.bits.filter_multi_en = 0;
  pf_ctrl.bits.filter_uni_en = 0;
 } else {





  if (filter & ET131X_PACKET_TYPE_ALL_MULTICAST) {
   pf_ctrl.bits.filter_multi_en = 0;
  } else {
   SetupDeviceForMulticast(adapter);
   pf_ctrl.bits.filter_multi_en = 1;
   ctrl.bits.pkt_filter_disable = 0;
  }


  if (filter & ET131X_PACKET_TYPE_DIRECTED) {
   SetupDeviceForUnicast(adapter);
   pf_ctrl.bits.filter_uni_en = 1;
   ctrl.bits.pkt_filter_disable = 0;
  }


  if (filter & ET131X_PACKET_TYPE_BROADCAST) {
   pf_ctrl.bits.filter_broad_en = 1;
   ctrl.bits.pkt_filter_disable = 0;
  } else {
   pf_ctrl.bits.filter_broad_en = 0;
  }





  writel(pf_ctrl.value,
         &adapter->regs->rxmac.pf_ctrl.value);
  writel(ctrl.value, &adapter->regs->rxmac.ctrl.value);
 }
 return status;
}
