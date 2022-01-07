
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct net_device {int dummy; } ;


 int BIT2 ;
 int IntMig ;
 int MacConfig_85BASIC_HardCode (struct net_device*) ;
 int PHYPR ;
 int PlatformIOWrite1Byte (struct net_device*,int,int) ;
 int PlatformIOWrite4Byte (struct net_device*,int,int) ;
 int TID_AC_MAP ;
 int read_nic_byte (struct net_device*,int) ;
 int write_nic_byte (struct net_device*,int,int) ;
 int write_nic_word (struct net_device*,int,int) ;

__attribute__((used)) static void
MacConfig_85BASIC(
 struct net_device *dev)
{

       u8 u1DA;
 MacConfig_85BASIC_HardCode(dev);




 write_nic_word(dev, TID_AC_MAP, 0xfa50);


 write_nic_word(dev, IntMig, 0x0000);


 PlatformIOWrite4Byte(dev, 0x1F0, 0x00000000);
 PlatformIOWrite4Byte(dev, 0x1F4, 0x00000000);
 PlatformIOWrite1Byte(dev, 0x1F8, 0x00);







 u1DA = read_nic_byte(dev, PHYPR);
 write_nic_byte(dev, PHYPR, (u1DA | BIT2) );


 write_nic_word(dev, 0x360, 0x1000);
 write_nic_word(dev, 0x362, 0x1000);


 write_nic_word(dev, 0x370, 0x0560);
 write_nic_word(dev, 0x372, 0x0560);
 write_nic_word(dev, 0x374, 0x0DA4);
 write_nic_word(dev, 0x376, 0x0DA4);
 write_nic_word(dev, 0x378, 0x0560);
 write_nic_word(dev, 0x37A, 0x0560);
 write_nic_word(dev, 0x37C, 0x00EC);

 write_nic_word(dev, 0x37E, 0x00EC);
       write_nic_byte(dev, 0x24E,0x01);


}
