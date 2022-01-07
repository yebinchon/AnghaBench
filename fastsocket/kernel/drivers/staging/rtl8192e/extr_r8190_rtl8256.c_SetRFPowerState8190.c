
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int u8 ;
struct r8192_priv {int SetRFPowerStateInProgress; int rf_chip; TYPE_1__* ieee80211; int bHwRfOffAction; int rf_type; int * txvopringhead; int * txvopringtail; int * txvipringhead; int * txvipringtail; int * txbepringhead; int * txbepringtail; int * txbkpringhead; int * txbkpringtail; int * txmapringhead; int * txmapringtail; } ;
struct net_device {int dummy; } ;
typedef int * ptx_ring ;
struct TYPE_10__ {int (* LedControlHandler ) (TYPE_4__*,int ) ;} ;
struct TYPE_12__ {TYPE_2__ HalFunc; } ;
struct TYPE_11__ {int bLeisurePs; } ;
struct TYPE_9__ {int eRFPowerState; int state; int RfOffReason; int PowerSaveControl; } ;
typedef int RT_RF_POWER_STATE ;
typedef TYPE_3__* PRT_POWER_SAVE_CONTROL ;


 int ANAPAR ;
 TYPE_4__* Adapter ;
 int BB_RESET ;

 int BIT0 ;
 int BIT4 ;

 int COMP_ERR ;
 int COMP_POWER ;
 int IEEE80211_LINKED ;
 int LED_CTL_LINK ;
 int LED_CTL_NO_LINK ;
 int LED_CTL_POWER_OFF ;
 int MAX_DOZE_WAITING_TIMES_9x ;
 int MAX_TX_QUEUE ;

 int MacBlkCtrl ;
 int RF_1T2R ;
 int RF_2T4R ;

 int RF_CHANGE_BY_IPS ;
 int RT_TRACE (int ,char*,...) ;





 struct r8192_priv* ieee80211_priv (struct net_device*) ;
 int mdelay (int) ;
 int rFPGA0_AnalogParameter1 ;
 int rFPGA0_AnalogParameter2 ;
 int rFPGA0_AnalogParameter4 ;
 int rFPGA0_XA_RFInterfaceOE ;
 int rFPGA0_XB_RFInterfaceOE ;
 int rFPGA0_XC_RFInterfaceOE ;
 int rOFDM0_TRxPathEnable ;
 int rOFDM1_TRxPathEnable ;
 int read_nic_byte (struct net_device*,int ) ;
 int rtl8192_setBBreg (struct net_device*,int ,int,int) ;
 int stub1 (TYPE_4__*,int ) ;
 int stub2 (TYPE_4__*,int ) ;
 int stub3 (TYPE_4__*,int ) ;
 int stub4 (TYPE_4__*,int ) ;
 int udelay (int) ;
 int write_nic_byte (struct net_device*,int ,int) ;

__attribute__((used)) static bool
SetRFPowerState8190(
 struct net_device* dev,
 RT_RF_POWER_STATE eRFPowerState
 )
{
 struct r8192_priv *priv = ieee80211_priv(dev);
 PRT_POWER_SAVE_CONTROL pPSC = (PRT_POWER_SAVE_CONTROL)(&(priv->ieee80211->PowerSaveControl));
 bool bResult = 1;

 u8 i = 0, QueueID = 0;
 ptx_ring head=((void*)0),tail=((void*)0);

 if(priv->SetRFPowerStateInProgress == 1)
  return 0;
 RT_TRACE(COMP_POWER, "===========> SetRFPowerState8190()!\n");
 priv->SetRFPowerStateInProgress = 1;

 switch(priv->rf_chip)
 {
  case 133:
  switch( eRFPowerState )
  {
   case 129:
    RT_TRACE(COMP_POWER, "SetRFPowerState8190() eRfOn !\n");
    write_nic_byte(dev, ANAPAR, 0x37);
    write_nic_byte(dev, MacBlkCtrl, 0x17);
    mdelay(1);


    priv->bHwRfOffAction = 0;



    write_nic_byte(dev, BB_RESET, (read_nic_byte(dev, BB_RESET)|BIT0));



    rtl8192_setBBreg(dev, rFPGA0_AnalogParameter2, 0x20000000, 0x1);

     rtl8192_setBBreg(dev, rFPGA0_AnalogParameter1, 0x60, 0x3);

    rtl8192_setBBreg(dev, rFPGA0_AnalogParameter1, 0x98, 0x13);

    rtl8192_setBBreg(dev, rFPGA0_AnalogParameter4, 0xf03, 0xf03);







     rtl8192_setBBreg(dev, rFPGA0_XA_RFInterfaceOE, BIT4, 0x1);
    rtl8192_setBBreg(dev, rFPGA0_XB_RFInterfaceOE, BIT4, 0x1);

      break;





   case 128:
   case 130:
    RT_TRACE(COMP_POWER, "SetRFPowerState8190() eRfOff/Sleep !\n");
    if (pPSC->bLeisurePs)
    {
     for(QueueID = 0, i = 0; QueueID < MAX_TX_QUEUE; )
     {
      switch(QueueID) {
       case 134:
        tail=priv->txmapringtail;
        head=priv->txmapringhead;
        break;

       case 135:
        tail=priv->txbkpringtail;
        head=priv->txbkpringhead;
        break;

       case 136:
        tail=priv->txbepringtail;
        head=priv->txbepringhead;
        break;

       case 132:
        tail=priv->txvipringtail;
        head=priv->txvipringhead;
        break;

       case 131:
        tail=priv->txvopringtail;
        head=priv->txvopringhead;
        break;

       default:
        tail=head=((void*)0);
        break;
      }
      if(tail == head)
      {

       QueueID++;
       continue;
      }
      else
      {
       RT_TRACE(COMP_POWER, "eRf Off/Sleep: %d times BusyQueue[%d] !=0 before doze!\n", (i+1), QueueID);
       udelay(10);
       i++;
      }

      if(i >= MAX_DOZE_WAITING_TIMES_9x)
      {
       RT_TRACE(COMP_POWER, "\n\n\n TimeOut!! SetRFPowerState8190(): eRfOff: %d times BusyQueue[%d] != 0 !!!\n\n\n", MAX_DOZE_WAITING_TIMES_9x, QueueID);
       break;
      }
     }
    }
    rtl8192_setBBreg(dev, rFPGA0_XA_RFInterfaceOE, BIT4, 0x0);
     rtl8192_setBBreg(dev, rFPGA0_XB_RFInterfaceOE, BIT4, 0x0);



     rtl8192_setBBreg(dev, rFPGA0_AnalogParameter4, 0xf03, 0x0);


     rtl8192_setBBreg(dev, rFPGA0_AnalogParameter1, 0x98, 0x0);





     rtl8192_setBBreg(dev, rFPGA0_AnalogParameter1, 0x60, 0x0);

     rtl8192_setBBreg(dev, rFPGA0_AnalogParameter2, 0x20000000, 0x0);






     write_nic_byte(dev, BB_RESET, (read_nic_byte(dev, BB_RESET)|BIT0));

     write_nic_byte(dev, MacBlkCtrl, 0x0);

     write_nic_byte(dev, ANAPAR, 0x07);
    priv->bHwRfOffAction = 0;


     break;

   default:
     bResult = 0;
     RT_TRACE(COMP_ERR, "SetRFPowerState8190(): unknow state to set: 0x%X!!!\n", eRFPowerState);
     break;
  }

  break;

  default:
   RT_TRACE(COMP_ERR, "SetRFPowerState8190(): Unknown RF type\n");
   break;
 }

 if(bResult)
 {

  priv->ieee80211->eRFPowerState = eRFPowerState;

  switch(priv->rf_chip )
  {
   case 133:
   switch(priv->ieee80211->eRFPowerState)
   {
    case 130:



     if(priv->ieee80211->RfOffReason==RF_CHANGE_BY_IPS )
     {



     }
     else
     {




     }
     break;

    case 129:


     if( priv->ieee80211->state == IEEE80211_LINKED)
     {



     }
     else
     {




     }
     break;

    default:

     break;
   }

   break;

   default:
    RT_TRACE(COMP_ERR, "SetRFPowerState8190(): Unknown RF type\n");
    break;
  }
 }

 priv->SetRFPowerStateInProgress = 0;
 RT_TRACE(COMP_POWER, "<=========== SetRFPowerState8190() bResult = %d!\n", bResult);
 return bResult;
}
