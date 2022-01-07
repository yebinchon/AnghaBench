
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct net_device {int dummy; } ;


 int write_nic_byte (struct net_device*,int,int) ;

void rtl8185_write_phy(struct net_device *dev, u8 adr, u32 data)
{
 u32 phyw;

 adr |= 0x80;

 phyw= ((data<<8) | adr);


 write_nic_byte(dev, 0x7f, ((phyw & 0xff000000) >> 24));
 write_nic_byte(dev, 0x7e, ((phyw & 0x00ff0000) >> 16));
 write_nic_byte(dev, 0x7d, ((phyw & 0x0000ff00) >> 8));
 write_nic_byte(dev, 0x7c, ((phyw & 0x000000ff) ));





}
