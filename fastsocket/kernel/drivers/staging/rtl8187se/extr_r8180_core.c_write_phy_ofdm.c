
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct net_device {int dummy; } ;


 int rtl8185_write_phy (struct net_device*,int ,int) ;

inline void write_phy_ofdm (struct net_device *dev, u8 adr, u32 data)
{
 data = data & 0xff;
 rtl8185_write_phy(dev, adr, data);
}
