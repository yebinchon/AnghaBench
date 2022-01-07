
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int tmpdata ;
struct net_device {int dummy; } ;
typedef int macaddr ;


 int EFUSE_CCCR ;
 int EFUSE_MAC_ADDR ;
 int EFUSE_SDIO_SETTING ;
 int FALSE ;
 int TRUE ;
 int efuse_write_data (struct net_device*,int ,int*,int,int ) ;

void efuset_test_func_write(struct net_device* dev)
{
 u32 bWordUnit = TRUE;
 u8 CCCR=0x02,SDIO_SETTING = 0xFF;
 u8 tmpdata[2];

 u8 macaddr[6] = {0x00,0xe0,0x4c,0x87,0x12,0x66};
 efuse_write_data(dev,EFUSE_MAC_ADDR,macaddr,sizeof(macaddr),bWordUnit);

 bWordUnit = FALSE;
 efuse_write_data(dev,EFUSE_CCCR,&CCCR,sizeof(u8),bWordUnit);

 bWordUnit = FALSE;
 efuse_write_data(dev,EFUSE_SDIO_SETTING,&SDIO_SETTING,sizeof(u8),bWordUnit);

 bWordUnit = TRUE;
 tmpdata[0] =SDIO_SETTING ;
 tmpdata[1] =CCCR ;
 efuse_write_data(dev,EFUSE_SDIO_SETTING,tmpdata,sizeof(tmpdata),bWordUnit);

}
