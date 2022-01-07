
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct net_device {int dummy; } ;


 int EPROM_CMD ;
 int do_93c46 (struct net_device*,int) ;
 int read_nic_byte (struct net_device*,int ) ;
 int write_nic_byte (struct net_device*,int ,int) ;

u16 Read93C46(struct net_device* dev, u16 Reg )
{

    u8 clear[1] = {0x0};
 u8 cs[1] = {0x88};
 u8 cssk[1] = {0x8c};
 u8 csdi[1] = {0x8a};
    u8 csskdi[1] = {0x8e};

 u8 EepromSEL[1]={0x00};
 u8 address;

 u16 storedataF[1] = {0x0};
 u8 t,data[1],storedata[1];


 address = (u8)Reg;


 *EepromSEL= read_nic_byte(dev, EPROM_CMD);

 if((*EepromSEL & 0x10) == 0x10)
 {
  address = address | 0x80;

  write_nic_byte(dev, EPROM_CMD, csdi[0]);
  write_nic_byte(dev, EPROM_CMD, csskdi[0]);
     do_93c46(dev, address);
 }


 for(t=0 ; t<16 ; t++)
 {
  write_nic_byte(dev, EPROM_CMD, cs[0]);
  write_nic_byte(dev, EPROM_CMD, cssk[0]);
  *data= read_nic_byte(dev, EPROM_CMD);

  if(*data & 0x8d)
  {
   *data = *data & 0x01;
   *storedata = *data;
  }
  else
  {
   *data = *data & 0x01 ;
   *storedata = *data;
  }
  *storedataF = (*storedataF << 1 ) + *storedata;
 }
 write_nic_byte(dev, EPROM_CMD, cs[0]);
 write_nic_byte(dev, EPROM_CMD, clear[0]);

 return *storedataF;
}
