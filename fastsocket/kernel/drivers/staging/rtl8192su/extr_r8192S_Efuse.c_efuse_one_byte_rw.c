
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct net_device {int dummy; } ;


 scalar_t__ EFUSE_CTRL ;
 int FALSE ;
 int TRUE ;
 int read_nic_byte (struct net_device*,scalar_t__) ;
 int write_nic_byte (struct net_device*,scalar_t__,int) ;

int efuse_one_byte_rw(struct net_device* dev, u8 bRead, u16 addr, u8 *data)
{
 u32 bResult;

 u8 tmpidx = 0;
 u8 tmpv8=0;



 write_nic_byte(dev, EFUSE_CTRL+1, (u8)(addr&0xff));
 tmpv8 = ((u8)((addr>>8) &0x03) ) | (read_nic_byte(dev, EFUSE_CTRL+2)&0xFC );
 write_nic_byte(dev, EFUSE_CTRL+2, tmpv8);

 if(TRUE==bRead){

  write_nic_byte(dev, EFUSE_CTRL+3, 0x72);

  while(!(0x80 & read_nic_byte(dev, EFUSE_CTRL+3)) && (tmpidx<100) ){
   tmpidx++;
  }
  if(tmpidx<100){
   *data=read_nic_byte(dev, EFUSE_CTRL);
   bResult = TRUE;
  }
  else
  {
   *data = 0;
   bResult = FALSE;
  }

 }
 else{

  write_nic_byte(dev, EFUSE_CTRL, *data);

  write_nic_byte(dev, EFUSE_CTRL+3, 0xF2);

  while((0x80 & read_nic_byte(dev, EFUSE_CTRL+3)) && (tmpidx<100) ){
   tmpidx++;
  }
  if(tmpidx<100)
  {
   *data=read_nic_byte(dev, EFUSE_CTRL);
   bResult = TRUE;
  }
  else
  {
   *data = 0;
   bResult = FALSE;
  }

 }
 return bResult;
}
