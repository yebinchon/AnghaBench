
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct r8180_priv {scalar_t__ card_8185; int XtalCal_Xin; int XtalCal_Xout; int bSwAntennaDiverity; int bDefaultAntenna1; scalar_t__ bXtalCalibration; } ;
struct net_device {int dummy; } ;


 int ANTSEL ;
 int BIT11 ;
 int BIT5 ;
 int BIT6 ;
 int BIT9 ;
 int CCK_TXAGC ;
 int* OFDM_CONFIG ;
 int OFDM_TXAGC ;
 int PhyAddr ;
 int PlatformIOWrite4Byte (struct net_device*,int ,int) ;
 int RF_ReadReg (struct net_device*,int) ;
 int RF_WriteReg (struct net_device*,int,int) ;
 int SetAntennaConfig87SE (struct net_device*,int ,int ) ;
 scalar_t__ VERSION_8187S_C ;
 scalar_t__ VERSION_8187S_D ;
 int WriteBBPortUchar (struct net_device*,int) ;
 int* ZEBRA_AGC ;
 int* ZEBRA_RF_RX_GAIN_TABLE ;
 scalar_t__ ieee80211_priv (struct net_device*) ;
 int mdelay (int) ;
 int printk (char*,int) ;
 int read_nic_byte (struct net_device*,int) ;
 int write_nic_byte (struct net_device*,int,int) ;
 int write_phy_cck (struct net_device*,int,int) ;
 int write_phy_ofdm (struct net_device*,int,int) ;

void
ZEBRA_Config_85BASIC_HardCode(
 struct net_device *dev
 )
{

 struct r8180_priv *priv = (struct r8180_priv *)ieee80211_priv(dev);
 u32 i;
 u32 addr,data;
 u32 u4bRegOffset, u4bRegValue, u4bRF23, u4bRF24;
       u8 u1b24E;
 RF_WriteReg(dev, 0x00, 0x013f); mdelay(1);
 u4bRF23= RF_ReadReg(dev, 0x08); mdelay(1);
 u4bRF24= RF_ReadReg(dev, 0x09); mdelay(1);

 if (u4bRF23==0x818 && u4bRF24==0x70C && priv->card_8185 == VERSION_8187S_C)
  priv->card_8185 = VERSION_8187S_D;




 RF_WriteReg(dev, 0x00, 0x009f); mdelay(1);

 RF_WriteReg(dev, 0x01, 0x06e0); mdelay(1);


 RF_WriteReg(dev, 0x02, 0x004d); mdelay(1);


 RF_WriteReg(dev, 0x03, 0x07f1); mdelay(1);

 RF_WriteReg(dev, 0x04, 0x0975); mdelay(1);
 RF_WriteReg(dev, 0x05, 0x0c72); mdelay(1);
 RF_WriteReg(dev, 0x06, 0x0ae6); mdelay(1);
 RF_WriteReg(dev, 0x07, 0x00ca); mdelay(1);
 RF_WriteReg(dev, 0x08, 0x0e1c); mdelay(1);
 RF_WriteReg(dev, 0x09, 0x02f0); mdelay(1);
 RF_WriteReg(dev, 0x0a, 0x09d0); mdelay(1);
 RF_WriteReg(dev, 0x0b, 0x01ba); mdelay(1);
 RF_WriteReg(dev, 0x0c, 0x0640); mdelay(1);
 RF_WriteReg(dev, 0x0d, 0x08df); mdelay(1);
 RF_WriteReg(dev, 0x0e, 0x0020); mdelay(1);
 RF_WriteReg(dev, 0x0f, 0x0990); mdelay(1);



 RF_WriteReg(dev, 0x00, 0x013f); mdelay(1);

 RF_WriteReg(dev, 0x03, 0x0806); mdelay(1);

 if(priv->card_8185 < VERSION_8187S_C)
 {
  RF_WriteReg(dev, 0x04, 0x03f7); mdelay(1);
  RF_WriteReg(dev, 0x05, 0x05ab); mdelay(1);
  RF_WriteReg(dev, 0x06, 0x00c1); mdelay(1);
 }
 else
 {
  RF_WriteReg(dev, 0x04, 0x03a7); mdelay(1);
  RF_WriteReg(dev, 0x05, 0x059b); mdelay(1);
  RF_WriteReg(dev, 0x06, 0x0081); mdelay(1);
 }


 RF_WriteReg(dev, 0x07, 0x01A0); mdelay(1);



 RF_WriteReg(dev, 0x0a, 0x0001); mdelay(1);
 RF_WriteReg(dev, 0x0b, 0x0418); mdelay(1);

 if(priv->card_8185 == VERSION_8187S_D)
 {
  RF_WriteReg(dev, 0x0c, 0x0fbe); mdelay(1);
  RF_WriteReg(dev, 0x0d, 0x0008); mdelay(1);
  RF_WriteReg(dev, 0x0e, 0x0807); mdelay(1);
 }
 else
 {
  RF_WriteReg(dev, 0x0c, 0x0fbe); mdelay(1);
  RF_WriteReg(dev, 0x0d, 0x0008); mdelay(1);
  RF_WriteReg(dev, 0x0e, 0x0806); mdelay(1);
 }

 RF_WriteReg(dev, 0x0f, 0x0acc); mdelay(1);


 RF_WriteReg(dev, 0x00, 0x01d7); mdelay(1);

 RF_WriteReg(dev, 0x03, 0x0e00); mdelay(1);
 RF_WriteReg(dev, 0x04, 0x0e50); mdelay(1);
 for(i=0;i<=36;i++)
 {
  RF_WriteReg(dev, 0x01, i); mdelay(1);
  RF_WriteReg(dev, 0x02, ZEBRA_RF_RX_GAIN_TABLE[i]); mdelay(1);

 }

 RF_WriteReg(dev, 0x05, 0x0203); mdelay(1);

 RF_WriteReg(dev, 0x06, 0x0200); mdelay(1);

 RF_WriteReg(dev, 0x00, 0x0137); mdelay(1);
 mdelay(10);





 RF_WriteReg(dev, 0x0d, 0x0008); mdelay(1);
 mdelay(10);

 RF_WriteReg(dev, 0x00, 0x0037); mdelay(1);
 mdelay(10);

 RF_WriteReg(dev, 0x04, 0x0160); mdelay(1);
 mdelay(10);

 RF_WriteReg(dev, 0x07, 0x0080); mdelay(1);
 mdelay(10);

 RF_WriteReg(dev, 0x02, 0x088D); mdelay(1);
 mdelay(200);
 mdelay(10);
 mdelay(10);

 RF_WriteReg(dev, 0x00, 0x0137); mdelay(1);
 mdelay(10);

 RF_WriteReg(dev, 0x07, 0x0000); mdelay(1);
 RF_WriteReg(dev, 0x07, 0x0180); mdelay(1);
 RF_WriteReg(dev, 0x07, 0x0220); mdelay(1);
 RF_WriteReg(dev, 0x07, 0x03E0); mdelay(1);


 RF_WriteReg(dev, 0x06, 0x00c1); mdelay(1);
 RF_WriteReg(dev, 0x0a, 0x0001); mdelay(1);


 if( priv->bXtalCalibration )
 {




  RF_WriteReg(dev, 0x0f, (priv->XtalCal_Xin<<5)|(priv->XtalCal_Xout<<1)|BIT11|BIT9); mdelay(1);
  printk("ZEBRA_Config_85BASIC_HardCode(): (%02x)\n",
    (priv->XtalCal_Xin<<5) | (priv->XtalCal_Xout<<1) | BIT11| BIT9);
 }
 else
 {
  RF_WriteReg(dev, 0x0f, 0x0acc); mdelay(1);
 }



 RF_WriteReg(dev, 0x00, 0x00bf); mdelay(1);

 RF_WriteReg(dev, 0x0d, 0x08df); mdelay(1);
 RF_WriteReg(dev, 0x02, 0x004d); mdelay(1);
 RF_WriteReg(dev, 0x04, 0x0975); mdelay(1);
 mdelay(10);
 mdelay(10);
 mdelay(10);
 RF_WriteReg(dev, 0x00, 0x0197); mdelay(1);
 RF_WriteReg(dev, 0x05, 0x05ab); mdelay(1);
 RF_WriteReg(dev, 0x00, 0x009f); mdelay(1);

 RF_WriteReg(dev, 0x01, 0x0000); mdelay(1);
 RF_WriteReg(dev, 0x02, 0x0000); mdelay(1);

 u1b24E = read_nic_byte(dev, 0x24E);
 write_nic_byte(dev, 0x24E, (u1b24E & (~(BIT5|BIT6))));
 write_phy_cck(dev,0x00,0xc8);
 write_phy_cck(dev,0x06,0x1c);
 write_phy_cck(dev,0x10,0x78);
 write_phy_cck(dev,0x2e,0xd0);
 write_phy_cck(dev,0x2f,0x06);
 write_phy_cck(dev,0x01,0x46);


 write_nic_byte(dev, CCK_TXAGC, 0x10);
 write_nic_byte(dev, OFDM_TXAGC, 0x1B);
 write_nic_byte(dev, ANTSEL, 0x03);
 write_phy_ofdm(dev, 0x00, 0x12);


 for (i=0; i<128; i++)
 {


  data = ZEBRA_AGC[i+1];
  data = data << 8;
  data = data | 0x0000008F;

  addr = i + 0x80;
  addr = addr << 8;
  addr = addr | 0x0000008E;

  WriteBBPortUchar(dev, data);
  WriteBBPortUchar(dev, addr);
  WriteBBPortUchar(dev, 0x0000008E);
 }

 PlatformIOWrite4Byte( dev, PhyAddr, 0x00001080);
 for(i=0; i<60; i++)
 {
  u4bRegOffset=i;
  u4bRegValue=OFDM_CONFIG[i];



  WriteBBPortUchar(dev,
      (0x00000080 |
      (u4bRegOffset & 0x7f) |
      ((u4bRegValue & 0xff) << 8)));
 }






 SetAntennaConfig87SE(dev, priv->bDefaultAntenna1, priv->bSwAntennaDiverity);


}
