
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct net_device {int dummy; } ;


 int DMESGW (char*,int,int) ;
 int MAX_PHY ;
 int PHY_ADR ;
 int force_pci_posting (struct net_device*) ;
 int mdelay (int) ;
 int read_nic_dword (struct net_device*,int ) ;
 int write_nic_dword (struct net_device*,int ,int) ;

void write_phy(struct net_device *dev, u8 adr, u8 data)
{
 u32 phy;
 int i;

 phy = 0xff0000;
 phy |= adr;
 phy |= 0x80;
 phy |= (data<<8);


 write_nic_dword(dev,PHY_ADR, phy);

 phy= 0xffff00;
 phy |= adr;

 write_nic_dword(dev,PHY_ADR, phy);
 for(i=0;i<MAX_PHY;i++){
  phy=read_nic_dword(dev,PHY_ADR);
  phy= phy & 0xff0000;
  phy= phy >> 16;
  if(phy == data){
   force_pci_posting(dev);
   mdelay(3);
   return;
  }else{
   force_pci_posting(dev);
   mdelay(3);
  }
 }
 DMESGW ("Phy writing %x %x failed!", adr,data);
}
