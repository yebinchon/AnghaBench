
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_44__ TYPE_9__ ;
typedef struct TYPE_43__ TYPE_8__ ;
typedef struct TYPE_42__ TYPE_7__ ;
typedef struct TYPE_41__ TYPE_6__ ;
typedef struct TYPE_40__ TYPE_5__ ;
typedef struct TYPE_39__ TYPE_4__ ;
typedef struct TYPE_38__ TYPE_3__ ;
typedef struct TYPE_37__ TYPE_2__ ;
typedef struct TYPE_36__ TYPE_21__ ;
typedef struct TYPE_35__ TYPE_20__ ;
typedef struct TYPE_34__ TYPE_1__ ;
typedef struct TYPE_33__ TYPE_19__ ;
typedef struct TYPE_32__ TYPE_18__ ;
typedef struct TYPE_31__ TYPE_17__ ;
typedef struct TYPE_30__ TYPE_16__ ;
typedef struct TYPE_29__ TYPE_15__ ;
typedef struct TYPE_28__ TYPE_14__ ;
typedef struct TYPE_27__ TYPE_13__ ;
typedef struct TYPE_26__ TYPE_12__ ;
typedef struct TYPE_25__ TYPE_11__ ;
typedef struct TYPE_24__ TYPE_10__ ;


typedef int u8 ;
typedef int u32 ;
struct r8180_priv {struct ieee80211_device* ieee80211; } ;
struct net_device {int dummy; } ;
struct TYPE_40__ {int Turbo_Enable; } ;
struct ieee80211_device {scalar_t__ iw_mode; TYPE_5__ current_network; } ;
typedef int pu1Byte ;
typedef scalar_t__ WIRELESS_MODE ;
struct TYPE_44__ {size_t ACI; int AIFSN; } ;
struct TYPE_41__ {int AIFSN; int ACI; scalar_t__ ACM; } ;
struct TYPE_42__ {TYPE_6__ f; } ;
struct TYPE_38__ {int ECWmin; int ECWmax; } ;
struct TYPE_39__ {TYPE_3__ f; } ;
struct TYPE_43__ {int TXOPLimit; TYPE_7__ AciAifsn; TYPE_4__ Ecw; } ;
struct TYPE_37__ {int * AcParam; } ;
struct TYPE_36__ {int AcmControl; } ;
struct TYPE_35__ {scalar_t__ CurrentQosMode; scalar_t__ QBssWirelessMode; TYPE_2__ WMMParamEle; } ;
struct TYPE_34__ {int (* SetHwRegHandler ) (TYPE_19__*,int ,int ) ;} ;
struct TYPE_33__ {TYPE_1__ HalFunc; } ;
struct TYPE_32__ {TYPE_8__ f; scalar_t__ longData; } ;
struct TYPE_28__ {size_t ACI; scalar_t__ ACM; } ;
struct TYPE_31__ {TYPE_14__ f; } ;
struct TYPE_26__ {TYPE_9__ f; } ;
struct TYPE_24__ {scalar_t__ ECWmin; scalar_t__ ECWmax; } ;
struct TYPE_25__ {TYPE_10__ f; } ;
struct TYPE_27__ {TYPE_12__ AciAifsn; TYPE_11__ Ecw; scalar_t__ TXOPLimit; } ;
struct TYPE_30__ {TYPE_13__ f; } ;
struct TYPE_29__ {int SIFS_Timer; int DIFS_Timer; int SlotTimeTimer; int EIFS_Timer; int CWminIndex; int CWmaxIndex; } ;
typedef TYPE_15__* PCHANNEL_ACCESS_SETTING ;
typedef TYPE_16__* PAC_PARAM ;
typedef TYPE_17__* PACI_AIFSN ;
typedef TYPE_18__ AC_PARAM ;
typedef size_t AC_CODING ;






 int ACM_CONTROL ;
 int ACM_HW_EN ;
 size_t AC_MAX ;
 int AC_PARAM_AIFS_OFFSET ;
 int AC_PARAM_ECW_MAX_OFFSET ;
 int AC_PARAM_ECW_MIN_OFFSET ;
 int AC_PARAM_TXOP_LIMIT_OFFSET ;
 int AckTimeOutReg ;
 TYPE_19__* Adapter ;
 int BEQ_ACM_CTL ;
 int BEQ_ACM_EN ;
 int DMESGW (char*,size_t) ;
 int EIFS ;
 int HW_VAR_AC_PARAM ;
 scalar_t__ IW_MODE_ADHOC ;
 scalar_t__ QOS_DISABLE ;
 int SIFS ;
 int SLOT ;
 int VIQ_ACM_CTL ;
 int VIQ_ACM_EN ;
 int VOQ_ACM_CTL ;
 int VOQ_ACM_EN ;
 int aSifsTime ;
 struct r8180_priv* ieee80211_priv (struct net_device*) ;
 TYPE_21__* pHalData ;
 TYPE_20__* pStaQos ;
 int stub1 (TYPE_19__*,int ,int ) ;
 int write_nic_byte (struct net_device*,int ,int) ;

void
ActUpdateChannelAccessSetting(
 struct net_device *dev,
 WIRELESS_MODE WirelessMode,
 PCHANNEL_ACCESS_SETTING ChnlAccessSetting
 )
{
 struct r8180_priv *priv = ieee80211_priv(dev);
 struct ieee80211_device *ieee = priv->ieee80211;
 AC_CODING eACI;
 AC_PARAM AcParam;

 u8 bFollowLegacySetting = 0;
 u8 u1bAIFS;
 ChnlAccessSetting->SIFS_Timer = 0x22;
 ChnlAccessSetting->DIFS_Timer = 0x1C;
 ChnlAccessSetting->SlotTimeTimer = 9;
 ChnlAccessSetting->EIFS_Timer = 0x5B;
 ChnlAccessSetting->CWminIndex = 3;
 ChnlAccessSetting->CWmaxIndex = 7;

 write_nic_byte(dev, SIFS, ChnlAccessSetting->SIFS_Timer);

 write_nic_byte(dev, SLOT, ChnlAccessSetting->SlotTimeTimer);

 u1bAIFS = aSifsTime + (2 * ChnlAccessSetting->SlotTimeTimer );






 write_nic_byte(dev, EIFS, ChnlAccessSetting->EIFS_Timer);

 write_nic_byte(dev, AckTimeOutReg, 0x5B);
 {
  bFollowLegacySetting = 1;

 }


 if(bFollowLegacySetting)
 {






  AcParam.longData = 0;
  AcParam.f.AciAifsn.f.AIFSN = 2;
  AcParam.f.AciAifsn.f.ACM = 0;
  AcParam.f.Ecw.f.ECWmin = ChnlAccessSetting->CWminIndex;
  AcParam.f.Ecw.f.ECWmax = ChnlAccessSetting->CWmaxIndex;
  AcParam.f.TXOPLimit = 0;




  if( ieee->current_network.Turbo_Enable == 1 )
   AcParam.f.TXOPLimit = 0x01FF;

  if (ieee->iw_mode == IW_MODE_ADHOC)
   AcParam.f.TXOPLimit = 0x0020;


  for(eACI = 0; eACI < AC_MAX; eACI++)
  {
   AcParam.f.AciAifsn.f.ACI = (u8)eACI;
   {
    PAC_PARAM pAcParam = (PAC_PARAM)(&AcParam);
    AC_CODING eACI;
    u8 u1bAIFS;
    u32 u4bAcParam;


    eACI = pAcParam->f.AciAifsn.f.ACI;
    u1bAIFS = pAcParam->f.AciAifsn.f.AIFSN * ChnlAccessSetting->SlotTimeTimer + aSifsTime;
    u4bAcParam = ( (((u32)(pAcParam->f.TXOPLimit)) << AC_PARAM_TXOP_LIMIT_OFFSET) |
      (((u32)(pAcParam->f.Ecw.f.ECWmax)) << AC_PARAM_ECW_MAX_OFFSET) |
      (((u32)(pAcParam->f.Ecw.f.ECWmin)) << AC_PARAM_ECW_MIN_OFFSET) |
      (((u32)u1bAIFS) << AC_PARAM_AIFS_OFFSET));

    switch(eACI)
    {
     case 130:

      break;

     case 131:

      break;

     case 129:

      break;

     case 128:

      break;

     default:
      DMESGW( "SetHwReg8185(): invalid ACI: %d !\n", eACI);
      break;
    }




    {
     PACI_AIFSN pAciAifsn = (PACI_AIFSN)(&pAcParam->f.AciAifsn);
     AC_CODING eACI = pAciAifsn->f.ACI;






     u8 AcmCtrl = 0;

     if( pAciAifsn->f.ACM )
     {
      switch(eACI)
      {
       case 131:
        AcmCtrl |= (BEQ_ACM_EN|BEQ_ACM_CTL|ACM_HW_EN);
        break;

       case 129:
        AcmCtrl |= (VIQ_ACM_EN|VIQ_ACM_CTL|ACM_HW_EN);
        break;

       case 128:
        AcmCtrl |= (VOQ_ACM_EN|VOQ_ACM_CTL|ACM_HW_EN);
        break;

       default:
        DMESGW("SetHwReg8185(): [HW_VAR_ACM_CTRL] ACM set failed: eACI is %d\n", eACI );
        break;
      }
     }
     else
     {
      switch(eACI)
      {
       case 131:
        AcmCtrl &= ( (~BEQ_ACM_EN) & (~BEQ_ACM_CTL) & (~ACM_HW_EN) );
        break;

       case 129:
        AcmCtrl &= ( (~VIQ_ACM_EN) & (~VIQ_ACM_CTL) & (~ACM_HW_EN) );
        break;

       case 128:
        AcmCtrl &= ( (~VOQ_ACM_EN) & (~VOQ_ACM_CTL) & (~ACM_HW_EN) );
        break;

       default:
        break;
      }
     }







     write_nic_byte(dev, ACM_CONTROL, 0);
    }
   }
  }


 }
}
