
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct net_device {int dummy; } ;


 scalar_t__ EFUSE_CTRL ;
 int read_nic_byte (struct net_device*,scalar_t__) ;
 int read_nic_dword (struct net_device*,scalar_t__) ;
 int write_nic_byte (struct net_device*,scalar_t__,int) ;

void
ReadEFuseByte(struct net_device* dev,u16 _offset, u8 *pbuf)
{


 u32 value32;
 u8 readbyte;
 u16 retry;



 write_nic_byte(dev, EFUSE_CTRL+1, (_offset & 0xff));
 readbyte = read_nic_byte(dev, EFUSE_CTRL+2);
 write_nic_byte(dev, EFUSE_CTRL+2, ((_offset >> 8) & 0x03) | (readbyte & 0xfc));


 readbyte = read_nic_byte(dev, EFUSE_CTRL+3);
 write_nic_byte(dev, EFUSE_CTRL+3, (readbyte & 0x7f));


 retry = 0;
 value32 = read_nic_dword(dev, EFUSE_CTRL);

 while(!(((value32 >> 24) & 0xff) & 0x80) && (retry<10000))
 {
  value32 = read_nic_dword(dev, EFUSE_CTRL);
  retry++;
 }
 *pbuf = (u8)(value32 & 0xff);
}
