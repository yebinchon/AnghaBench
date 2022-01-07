
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct r8180_priv {int SetRFPowerStateInProgress; int rf_chip; int RFProgType; int eRFPowerState; int txringcount; int TxPollingTimes; } ;
struct net_device {int dummy; } ;
typedef int RT_RF_POWER_STATE ;


 int ANAPARAM ;
 int ANAPARAM2 ;
 int ANAPARM2_ON ;
 int ANAPARM_ON ;
 int BIT5 ;
 int BIT6 ;
 int CONFIG3 ;
 int CONFIG3_PARM_En ;
 int CONFIG4 ;
 int CR9346 ;
 int LPS_MAX_SLEEP_WAITING_TIMES_87SE ;
 int MAX_DOZE_WAITING_TIMES_85B ;
 int MAX_POLLING_24F_TIMES_87SE ;
 int RF_WriteReg (struct net_device*,int,int) ;





 int get_curr_tx_free_desc (struct net_device*,int) ;
 struct r8180_priv* ieee80211_priv (struct net_device*) ;
 int mdelay (int) ;
 int printk (char*,int ) ;
 int read_nic_byte (struct net_device*,int) ;
 int udelay (int) ;
 int write_nic_byte (struct net_device*,int,int) ;
 int write_nic_dword (struct net_device*,int ,int ) ;
 int write_nic_word (struct net_device*,int,int) ;
 int write_phy_ofdm (struct net_device*,int,int) ;

bool SetZebraRFPowerState8185(struct net_device *dev,
         RT_RF_POWER_STATE eRFPowerState)
{
 struct r8180_priv *priv = ieee80211_priv(dev);
 u8 btCR9346, btConfig3;
 bool bActionAllowed = 1, bTurnOffBB = 1;
 u8 u1bTmp;
 int i;
 bool bResult = 1;
 u8 QueueID;

 if (priv->SetRFPowerStateInProgress == 1)
  return 0;

 priv->SetRFPowerStateInProgress = 1;

 btCR9346 = read_nic_byte(dev, CR9346);
 write_nic_byte(dev, CR9346, (btCR9346 | 0xC0));

 btConfig3 = read_nic_byte(dev, CONFIG3);
 write_nic_byte(dev, CONFIG3, (btConfig3 | CONFIG3_PARM_En));

 switch (priv->rf_chip) {
 case 132:
  switch (eRFPowerState) {
  case 129:
   RF_WriteReg(dev,0x4,0x9FF);

   write_nic_dword(dev, ANAPARAM, ANAPARM_ON);
   write_nic_dword(dev, ANAPARAM2, ANAPARM2_ON);

   write_nic_byte(dev, CONFIG4, priv->RFProgType);


   u1bTmp = read_nic_byte(dev, 0x24E);
   write_nic_byte(dev, 0x24E, (u1bTmp & (~(BIT5 | BIT6))));
   break;
  case 128:
   break;
  case 130:
   break;
  default:
   bResult = 0;
   break;
  }
  break;
 case 131:
  switch (eRFPowerState) {
  case 129:
   write_nic_word(dev, 0x37C, 0x00EC);


   write_nic_byte(dev, 0x54, 0x00);
   write_nic_byte(dev, 0x62, 0x00);


   RF_WriteReg(dev, 0x0, 0x009f); udelay(500);
   RF_WriteReg(dev, 0x4, 0x0972); udelay(500);


   RF_WriteReg(dev, 0x0, 0x009f); udelay(500);
   RF_WriteReg(dev, 0x4, 0x0972); udelay(500);


   write_phy_ofdm(dev,0x10,0x40);
   write_phy_ofdm(dev,0x12,0x40);


   write_nic_byte(dev, CONFIG4, priv->RFProgType);

   u1bTmp = read_nic_byte(dev, 0x24E);
   write_nic_byte(dev, 0x24E, (u1bTmp & (~(BIT5 | BIT6))));
   break;
  case 128:
   for (QueueID = 0, i = 0; QueueID < 6;) {
    if (get_curr_tx_free_desc(dev, QueueID) == priv->txringcount) {
     QueueID++;
     continue;
    } else {
     priv->TxPollingTimes ++;
     if (priv->TxPollingTimes >= LPS_MAX_SLEEP_WAITING_TIMES_87SE) {
      bActionAllowed = 0;
      break;
     } else
      udelay(10);
    }
   }

   if (bActionAllowed) {

    write_phy_ofdm(dev, 0x10, 0x00);
    write_phy_ofdm(dev, 0x12, 0x00);


    RF_WriteReg(dev, 0x4, 0x0000);
    RF_WriteReg(dev, 0x0, 0x0000);


    write_nic_byte(dev, 0x62, 0xff);
    write_nic_byte(dev, 0x54, 0xec);

    mdelay(1);

    {
     int i = 0;
     while (1) {
      u8 tmp24F = read_nic_byte(dev, 0x24f);

      if ((tmp24F == 0x01) || (tmp24F == 0x09)) {
       bTurnOffBB = 1;
       break;
      } else {
       udelay(10);
       i++;
       priv->TxPollingTimes++;

       if (priv->TxPollingTimes >= LPS_MAX_SLEEP_WAITING_TIMES_87SE) {
        bTurnOffBB = 0;
        break;
       } else
        udelay(10);
      }
     }
    }

    if (bTurnOffBB) {

     u1bTmp = read_nic_byte(dev, 0x24E);
     write_nic_byte(dev, 0x24E, (u1bTmp | BIT5 | BIT6));


     write_nic_byte(dev, 0x54, 0xFC);
     write_nic_word(dev, 0x37C, 0x00FC);
    }
   }
   break;
  case 130:
   for (QueueID = 0, i = 0; QueueID < 6;) {
    if (get_curr_tx_free_desc(dev, QueueID) == priv->txringcount) {
     QueueID++;
     continue;
    } else {
     udelay(10);
     i++;
    }

    if (i >= MAX_DOZE_WAITING_TIMES_85B)
     break;
   }


   write_phy_ofdm(dev, 0x10, 0x00);
   write_phy_ofdm(dev, 0x12, 0x00);


   RF_WriteReg(dev, 0x4, 0x0000);
   RF_WriteReg(dev, 0x0, 0x0000);


   write_nic_byte(dev, 0x62, 0xff);
   write_nic_byte(dev, 0x54, 0xec);

   mdelay(1);

   {
    int i = 0;

    while (1)
    {
     u8 tmp24F = read_nic_byte(dev, 0x24f);

     if ((tmp24F == 0x01) || (tmp24F == 0x09)) {
      bTurnOffBB = 1;
      break;
     } else {
      bTurnOffBB = 0;
      udelay(10);
      i++;
     }

     if (i > MAX_POLLING_24F_TIMES_87SE)
      break;
    }
   }

   if (bTurnOffBB) {

    u1bTmp = read_nic_byte(dev, 0x24E);
    write_nic_byte(dev, 0x24E, (u1bTmp | BIT5 | BIT6));


    write_nic_byte(dev, 0x54, 0xFC);
    write_nic_word(dev, 0x37C, 0x00FC);
   }
   break;
  default:
   bResult = 0;
   printk("SetZebraRFPowerState8185(): unknow state to set: 0x%X!!!\n", eRFPowerState);
   break;
  }
  break;
 }

 btConfig3 &= ~(CONFIG3_PARM_En);
 write_nic_byte(dev, CONFIG3, btConfig3);

 btCR9346 &= ~(0xC0);
 write_nic_byte(dev, CR9346, btCR9346);

 if (bResult && bActionAllowed)
  priv->eRFPowerState = eRFPowerState;

 priv->SetRFPowerStateInProgress = 0;

 return bResult && bActionAllowed;
}
