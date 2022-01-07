
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct net_device {int dummy; } ;


 scalar_t__ EFUSE_CTRL ;
 int FALSE ;
 int TRUE ;
 int read_nic_byte (struct net_device*,scalar_t__) ;
 int write_nic_byte (struct net_device*,scalar_t__,int) ;

__attribute__((used)) static u8
efuse_OneByteWrite(struct net_device* dev, u16 addr, u8 data)
{
 u8 tmpidx = 0;
 u8 bResult;







 write_nic_byte(dev, EFUSE_CTRL+1, (u8)(addr&0xff));
 write_nic_byte(dev, EFUSE_CTRL+2,
 read_nic_byte(dev, EFUSE_CTRL+2)|(u8)((addr>>8)&0x03) );

 write_nic_byte(dev, EFUSE_CTRL, data);
 write_nic_byte(dev, EFUSE_CTRL+3, 0xF2);

 while((0x80 & read_nic_byte(dev, EFUSE_CTRL+3)) && (tmpidx<100) ){
  tmpidx++;
 }

 if(tmpidx<100)
 {
  bResult = TRUE;
 }
 else
 {
  bResult = FALSE;
 }

 return bResult;
}
