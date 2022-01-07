
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int txpowertable ;
struct net_device {int dummy; } ;
typedef int ocr ;
typedef int macaddr ;
typedef int chipid ;


 int EFUSE_CCCR ;
 int EFUSE_CHIP_ID ;
 int EFUSE_MAC_ADDR ;
 int EFUSE_TXPW_TAB ;
 int efuse_read_data (struct net_device*,int ,int *,int) ;
 int memset (int *,int ,int) ;

void efuset_test_func_read(struct net_device* dev)
{
 u8 chipid[2];
 u8 ocr[3];
 u8 macaddr[6];
 u8 txpowertable[28];

 memset(chipid,0,sizeof(u8)*2);
 efuse_read_data(dev,EFUSE_CHIP_ID,chipid,sizeof(chipid));

 memset(ocr,0,sizeof(u8)*3);
 efuse_read_data(dev,EFUSE_CCCR,ocr,sizeof(ocr));

 memset(macaddr,0,sizeof(u8)*6);
 efuse_read_data(dev,EFUSE_MAC_ADDR,macaddr,sizeof(macaddr));

 memset(txpowertable,0,sizeof(u8)*28);
 efuse_read_data(dev,EFUSE_TXPW_TAB,txpowertable,sizeof(txpowertable));
}
