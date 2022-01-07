
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device_stats {int dummy; } ;
struct net_device {int dummy; } ;
typedef int iobuff_t ;
typedef int __u8 ;





 int async_unwrap_bof (struct net_device*,struct net_device_stats*,int *,int) ;
 int async_unwrap_ce (struct net_device*,struct net_device_stats*,int *,int) ;
 int async_unwrap_eof (struct net_device*,struct net_device_stats*,int *,int) ;
 int async_unwrap_other (struct net_device*,struct net_device_stats*,int *,int) ;

void async_unwrap_char(struct net_device *dev,
         struct net_device_stats *stats,
         iobuff_t *rx_buff, __u8 byte)
{
 switch(byte) {
 case 129:
  async_unwrap_ce(dev, stats, rx_buff, byte);
  break;
 case 130:
  async_unwrap_bof(dev, stats, rx_buff, byte);
  break;
 case 128:
  async_unwrap_eof(dev, stats, rx_buff, byte);
  break;
 default:
  async_unwrap_other(dev, stats, rx_buff, byte);
  break;
 }
}
