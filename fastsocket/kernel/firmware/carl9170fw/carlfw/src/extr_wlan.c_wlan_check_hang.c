
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dma_desc {int dummy; } ;
struct TYPE_3__ {scalar_t__* last_super; scalar_t__* last_super_num; int mac_reset; int * tx_queue; } ;
struct TYPE_4__ {TYPE_1__ wlan; } ;


 int AR9170_TXQ0 ;
 int AR9170_TXQ_SPECIAL ;
 int BIT (int) ;
 scalar_t__ CARL9170FW_TX_MAC_BUMP ;
 scalar_t__ CARL9170FW_TX_MAC_DEBUG ;
 scalar_t__ CARL9170FW_TX_MAC_RESET ;
 scalar_t__ DESC_PAYLOAD (struct dma_desc*) ;
 TYPE_2__ fw ;
 scalar_t__ get_wlan_txq_addr (int) ;
 scalar_t__ queue_empty (int *) ;
 scalar_t__ unlikely (int) ;
 int wlan_dma_bump (int) ;
 int wlan_dump_queue (int) ;
 int wlan_trigger (int ) ;

__attribute__((used)) static void wlan_check_hang(void)
{
 struct dma_desc *desc;
 int i;

 for (i = AR9170_TXQ_SPECIAL; i >= AR9170_TXQ0; i--) {
  if (queue_empty(&fw.wlan.tx_queue[i])) {

   continue;
  }


  desc = (struct dma_desc *)get_wlan_txq_addr(i);


  if (unlikely(DESC_PAYLOAD(desc) == fw.wlan.last_super[i])) {
   fw.wlan.last_super_num[i]++;

   if (unlikely(fw.wlan.last_super_num[i] >= CARL9170FW_TX_MAC_RESET)) {
    fw.wlan.mac_reset++;
   }
  } else {

   fw.wlan.last_super[i] = DESC_PAYLOAD(desc);
   fw.wlan.last_super_num[i] = 0;
  }
 }
}
