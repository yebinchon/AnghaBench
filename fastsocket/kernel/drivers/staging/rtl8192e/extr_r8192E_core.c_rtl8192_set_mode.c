
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct net_device {int dummy; } ;


 int EPROM_CK_SHIFT ;
 int EPROM_CMD ;
 int EPROM_CMD_OPERATING_MODE_MASK ;
 int EPROM_CMD_OPERATING_MODE_SHIFT ;
 int EPROM_CS_SHIFT ;
 int read_nic_byte (struct net_device*,int ) ;
 int write_nic_byte (struct net_device*,int ,int) ;

__attribute__((used)) static void rtl8192_set_mode(struct net_device *dev,int mode)
{
 u8 ecmd;
 ecmd=read_nic_byte(dev, EPROM_CMD);
 ecmd=ecmd &~ EPROM_CMD_OPERATING_MODE_MASK;
 ecmd=ecmd | (mode<<EPROM_CMD_OPERATING_MODE_SHIFT);
 ecmd=ecmd &~ (1<<EPROM_CS_SHIFT);
 ecmd=ecmd &~ (1<<EPROM_CK_SHIFT);
 write_nic_byte(dev, EPROM_CMD, ecmd);
}
