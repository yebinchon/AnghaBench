
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r8192_priv {int dma_poll_mask; } ;
struct net_device {int dummy; } ;


 int EPROM_CMD_CONFIG ;
 int EPROM_CMD_NORMAL ;
 int TX_DMA_POLLING ;
 int TX_DMA_STOP_LOWPRIORITY_SHIFT ;
 scalar_t__ ieee80211_priv (struct net_device*) ;
 int rtl8192_set_mode (struct net_device*,int ) ;
 int write_nic_byte (struct net_device*,int ,int) ;

__attribute__((used)) static void rtl8192_data_hard_resume(struct net_device *dev)
{
}
