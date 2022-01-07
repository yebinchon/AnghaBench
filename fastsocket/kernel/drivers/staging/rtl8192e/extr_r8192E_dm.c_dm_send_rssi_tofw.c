
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct r8192_priv {scalar_t__ undecorated_smoothed_pwdb; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int Length; scalar_t__ Value; int Op; } ;
typedef TYPE_1__ DCMD_TXCMD_T ;


 int DESC_PACKET_TYPE_INIT ;
 int DRIVER_RSSI ;
 int TXCMD_SET_RX_RSSI ;
 int cmpk_message_handle_tx (struct net_device*,int *,int ,int) ;
 struct r8192_priv* ieee80211_priv (struct net_device*) ;
 int write_nic_byte (struct net_device*,int ,int ) ;

__attribute__((used)) static void dm_send_rssi_tofw(struct net_device *dev)
{
 DCMD_TXCMD_T tx_cmd;
 struct r8192_priv *priv = ieee80211_priv(dev);




 write_nic_byte(dev, DRIVER_RSSI, (u8)priv->undecorated_smoothed_pwdb);
 return;

 tx_cmd.Op = TXCMD_SET_RX_RSSI;
 tx_cmd.Length = 4;
 tx_cmd.Value = priv->undecorated_smoothed_pwdb;

 cmpk_message_handle_tx(dev, (u8*)&tx_cmd,
        DESC_PACKET_TYPE_INIT, sizeof(DCMD_TXCMD_T));

}
