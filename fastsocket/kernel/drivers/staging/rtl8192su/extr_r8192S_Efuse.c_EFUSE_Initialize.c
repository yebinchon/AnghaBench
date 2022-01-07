
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct net_device {int dummy; } ;


 int EFUSE_CTRL ;
 int EFUSE_TEST ;
 int SYS_FUNC_EN ;
 int SYS_ISO_CTRL ;
 int read_nic_byte (struct net_device*,int) ;
 int write_nic_byte (struct net_device*,int,int) ;

extern void
EFUSE_Initialize(struct net_device* dev)
{
 u8 Bytetemp = {0x00};
 u8 temp = {0x00};


 Bytetemp = read_nic_byte(dev, SYS_FUNC_EN+1);
 temp = Bytetemp | 0x20;
 write_nic_byte(dev, SYS_FUNC_EN+1, temp);


 Bytetemp = read_nic_byte(dev, SYS_ISO_CTRL+1);
 temp = Bytetemp & 0xFE;
 write_nic_byte(dev, SYS_ISO_CTRL+1, temp);



 Bytetemp = read_nic_byte(dev, EFUSE_TEST+3);
 temp = Bytetemp | 0x80;
 write_nic_byte(dev, EFUSE_TEST+3, temp);


 write_nic_byte(dev, 0x2F8, 0x3);


 write_nic_byte(dev, EFUSE_CTRL+3, 0x72);

}
