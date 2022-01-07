
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct net_device {int dummy; } ;


 int ANAPARAM2 ;
 int CONFIG3 ;
 int CONFIG3_ANAPARAM_W_SHIFT ;
 int EPROM_CMD_CONFIG ;
 int EPROM_CMD_NORMAL ;
 int read_nic_byte (struct net_device*,int ) ;
 int rtl8180_set_mode (struct net_device*,int ) ;
 int write_nic_byte (struct net_device*,int ,int) ;
 int write_nic_dword (struct net_device*,int ,int ) ;

void rtl8185_set_anaparam2(struct net_device *dev, u32 a)
{
 u8 conf3;

 rtl8180_set_mode(dev, EPROM_CMD_CONFIG);

 conf3 = read_nic_byte(dev, CONFIG3);
 write_nic_byte(dev, CONFIG3, conf3 | (1<<CONFIG3_ANAPARAM_W_SHIFT));
 write_nic_dword(dev, ANAPARAM2, a);

 conf3 = read_nic_byte(dev, CONFIG3);
 write_nic_byte(dev, CONFIG3, conf3 &~(1<<CONFIG3_ANAPARAM_W_SHIFT));
 rtl8180_set_mode(dev, EPROM_CMD_NORMAL);
}
