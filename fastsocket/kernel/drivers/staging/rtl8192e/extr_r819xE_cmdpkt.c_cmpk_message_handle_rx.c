
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_2__ {int * rxcmdpkt; } ;
struct r8192_priv {TYPE_1__ stats; } ;
struct net_device {int dummy; } ;
struct ieee80211_rx_stats {int Length; int* virtual_address; } ;
typedef int cmpk_intr_sta_t ;



 int CMPK_BOTH_QUERY_CONFIG_SIZE ;
 int CMPK_RX_TX_FB_SIZE ;
 int CMPK_RX_TX_STS_SIZE ;
 int CMPK_TX_RAHIS_SIZE ;
 int COMP_EVENTS ;
 int RT_TRACE (int ,char*) ;





 int cmpk_handle_interrupt_status (struct net_device*,int*) ;
 int cmpk_handle_query_config_rx (struct net_device*,int*) ;
 int cmpk_handle_tx_feedback (struct net_device*,int*) ;
 int cmpk_handle_tx_rate_history (struct net_device*,int*) ;
 int cmpk_handle_tx_status (struct net_device*,int*) ;
 struct r8192_priv* ieee80211_priv (struct net_device*) ;

u32 cmpk_message_handle_rx(struct net_device *dev, struct ieee80211_rx_stats *pstats)
{

 struct r8192_priv *priv = ieee80211_priv(dev);
 int total_length;
 u8 cmd_length, exe_cnt = 0;
 u8 element_id;
 u8 *pcmd_buff;

        RT_TRACE(COMP_EVENTS, "---->cmpk_message_handle_rx()\n");



 if ( (pstats== ((void*)0)))
 {



  return 0;
 }


 total_length = pstats->Length;


 pcmd_buff = pstats->virtual_address;


 element_id = pcmd_buff[0];







 while (total_length > 0 || exe_cnt++ >100)
 {

  element_id = pcmd_buff[0];

  switch(element_id)
  {
   case 131:

           RT_TRACE(COMP_EVENTS, "---->cmpk_message_handle_rx():RX_TX_FEEDBACK\n");
    cmpk_handle_tx_feedback (dev, pcmd_buff);
    cmd_length = CMPK_RX_TX_FB_SIZE;
    break;

   case 132:

           RT_TRACE(COMP_EVENTS, "---->cmpk_message_handle_rx():RX_INTERRUPT_STATUS\n");
    cmpk_handle_interrupt_status(dev, pcmd_buff);
    cmd_length = sizeof(cmpk_intr_sta_t);
    break;

   case 133:

           RT_TRACE(COMP_EVENTS, "---->cmpk_message_handle_rx():BOTH_QUERY_CONFIG\n");
    cmpk_handle_query_config_rx(dev, pcmd_buff);
    cmd_length = CMPK_BOTH_QUERY_CONFIG_SIZE;
    break;

   case 128:

           RT_TRACE(COMP_EVENTS, "---->cmpk_message_handle_rx():RX_TX_STATUS\n");
    cmpk_handle_tx_status(dev, pcmd_buff);
    cmd_length = CMPK_RX_TX_STS_SIZE;
    break;

   case 130:



           RT_TRACE(COMP_EVENTS, "---->cmpk_message_handle_rx():RX_TX_PER_PKT_FEEDBACK\n");
    cmd_length = CMPK_RX_TX_FB_SIZE;
    break;

   case 129:


           RT_TRACE(COMP_EVENTS, "---->cmpk_message_handle_rx():RX_TX_HISTORY\n");
    cmpk_handle_tx_rate_history(dev, pcmd_buff);
    cmd_length = CMPK_TX_RAHIS_SIZE;
    break;

   default:

           RT_TRACE(COMP_EVENTS, "---->cmpk_message_handle_rx():unknow CMD Element\n");
    return 1;
  }







  priv->stats.rxcmdpkt[element_id]++;

  total_length -= cmd_length;
  pcmd_buff += cmd_length;
 }
 return 1;

 RT_TRACE(COMP_EVENTS, "<----cmpk_message_handle_rx()\n");
}
