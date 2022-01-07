
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct carl9170_tx_status {int dummy; } ;
struct TYPE_3__ {size_t tx_status_head_idx; scalar_t__ tx_status_pending; int * tx_status_cache; } ;
struct TYPE_4__ {TYPE_1__ wlan; } ;


 int CARL9170_RSP_TXCOMP ;
 size_t CARL9170_RSP_TX_STATUS_NUM ;
 size_t CARL9170_TX_STATUS_NUM ;
 TYPE_2__ fw ;
 unsigned int min (unsigned int,size_t) ;
 int send_cmd_to_host (unsigned int,int ,unsigned int,void*) ;

__attribute__((used)) static void wlan_send_buffered_tx_status(void)
{
 unsigned int len;

 while (fw.wlan.tx_status_pending) {
  len = min((unsigned int)fw.wlan.tx_status_pending,
     CARL9170_RSP_TX_STATUS_NUM);
  len = min(len, CARL9170_TX_STATUS_NUM - fw.wlan.tx_status_head_idx);
  send_cmd_to_host((len * sizeof(struct carl9170_tx_status) + 3) & ~3,
     CARL9170_RSP_TXCOMP, len, (void *)
     &fw.wlan.tx_status_cache[fw.wlan.tx_status_head_idx]);

  fw.wlan.tx_status_pending -= len;
  fw.wlan.tx_status_head_idx += len;
  fw.wlan.tx_status_head_idx %= CARL9170_TX_STATUS_NUM;
 }
}
