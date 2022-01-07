
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct net_device {int dummy; } ;


 int EPROM_CMD ;
 int write_nic_byte (struct net_device*,int ,int) ;

void do_93c46(struct net_device* dev, u8 addorvalue)
{

 u8 cs[1] = {0x88};
 u8 cssk[1] = {0x8c};
 u8 csdi[1] = {0x8a};
     u8 csskdi[1] = {0x8e};

     u8 count;

     for(count=0 ; count<8 ; count++)
 {
  if((addorvalue&0x80)!=0)
  {
   write_nic_byte(dev, EPROM_CMD, csdi[0]);
   write_nic_byte(dev, EPROM_CMD, csskdi[0]);
  }
  else
  {
   write_nic_byte(dev, EPROM_CMD, cs[0]);
   write_nic_byte(dev, EPROM_CMD, cssk[0]);
  }
  addorvalue = addorvalue << 1;
 }
}
