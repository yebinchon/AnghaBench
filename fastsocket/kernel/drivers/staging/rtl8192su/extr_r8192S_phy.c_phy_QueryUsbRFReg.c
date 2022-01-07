
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct r8192_priv {int bChangeRFInProgress; int rf_sem; } ;
struct net_device {int dummy; } ;
typedef int RF90_RADIO_PATH_E ;


 int COMP_RF ;
 int RF_BB_CMD_ADDR ;
 int RF_BB_CMD_DATA ;
 int RT_TRACE (int ,char*,int,...) ;
 int down (int *) ;
 struct r8192_priv* ieee80211_priv (struct net_device*) ;
 int msleep (int) ;
 scalar_t__ read_nic_dword (struct net_device*,int ) ;
 int up (int *) ;
 int write_nic_dword (struct net_device*,int ,int) ;

u32 phy_QueryUsbRFReg( struct net_device* dev, RF90_RADIO_PATH_E eRFPath, u32 Offset)
{

 struct r8192_priv *priv = ieee80211_priv(dev);

 u32 ReturnValue = 0;

 u8 PollingCnt = 50;
 u8 RFWaitCounter = 0;







 while(priv->bChangeRFInProgress)
 {


  down(&priv->rf_sem);

  RFWaitCounter ++;
  RT_TRACE(COMP_RF, "phy_QueryUsbRFReg(): Wait 1 ms (%d times)...\n", RFWaitCounter);
  msleep(1);

  if((RFWaitCounter > 100))
  {
   RT_TRACE(COMP_RF, "phy_QueryUsbRFReg(): (%d) Wait too logn to query BB!!\n", RFWaitCounter);
   return 0xffffffff;
  }
  else
  {

  }
 }

 priv->bChangeRFInProgress = 1;



 Offset &= 0x3f;

 write_nic_dword(dev, RF_BB_CMD_ADDR, 0xF0000002|
      (Offset<<8)|
      (eRFPath<<16));

 do
 {
  if(read_nic_dword(dev, RF_BB_CMD_ADDR) == 0)
   break;
 }while( --PollingCnt );


 ReturnValue = read_nic_dword(dev, RF_BB_CMD_DATA);



 up(&priv->rf_sem);
 priv->bChangeRFInProgress = 0;

 RT_TRACE(COMP_RF, "phy_QueryUsbRFReg(): eRFPath(%d), Offset(%#x) = %#x\n", eRFPath, Offset, ReturnValue);

 return ReturnValue;

}
