
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_12__ {unsigned long txbytesunicast; unsigned long rxbytesunicast; } ;
struct r8192_priv {int bis_cur_rdlstate; int bcurrent_turbo_EDCA; TYPE_5__ stats; TYPE_4__* ieee80211; } ;
struct net_device {int dummy; } ;
struct ieee80211_qos_parameters {int* aifs; scalar_t__* cw_min; scalar_t__* cw_max; scalar_t__* tx_op_limit; } ;
struct TYPE_10__ {scalar_t__ ACM; } ;
struct TYPE_14__ {TYPE_3__ f; } ;
struct TYPE_13__ {int IOTAction; size_t IOTPeer; } ;
struct TYPE_8__ {struct ieee80211_qos_parameters parameters; } ;
struct TYPE_9__ {TYPE_1__ qos_data; } ;
struct TYPE_11__ {scalar_t__ state; int bis_any_nonbepkts; int mode; TYPE_2__ current_network; TYPE_6__* pHTInfo; } ;
typedef TYPE_6__* PRT_HIGH_THROUGHPUT ;
typedef TYPE_7__* PACI_AIFSN ;


 int AC_PARAM_AIFS_OFFSET ;
 int AC_PARAM_ECW_MAX_OFFSET ;
 int AC_PARAM_ECW_MIN_OFFSET ;
 int AC_PARAM_TXOP_LIMIT_OFFSET ;
 int AcmHwCtrl ;
 int AcmHw_BeqEn ;
 int COMP_QOS ;
 int EDCAPARA_BE ;
 int HT_IOT_ACT_DISABLE_EDCA_TURBO ;
 scalar_t__ IEEE80211_LINKED ;
 int IEEE_G ;
 int IEEE_N_24G ;
 int RT_TRACE (int ,char*,int) ;
 int aSifsTime ;
 int dm_init_edca_turbo (struct net_device*) ;
 int* edca_setting_DL ;
 int* edca_setting_UL ;
 struct r8192_priv* ieee80211_priv (struct net_device*) ;
 int printk (char*,int) ;
 int read_nic_byte (struct net_device*,int ) ;
 int write_nic_byte (struct net_device*,int ,int) ;
 int write_nic_dword (struct net_device*,int ,int) ;

__attribute__((used)) static void dm_check_edca_turbo(
 struct net_device * dev)
{
 struct r8192_priv *priv = ieee80211_priv(dev);
 PRT_HIGH_THROUGHPUT pHTInfo = priv->ieee80211->pHTInfo;



 static unsigned long lastTxOkCnt = 0;
 static unsigned long lastRxOkCnt = 0;
 unsigned long curTxOkCnt = 0;
 unsigned long curRxOkCnt = 0;






 if(priv->ieee80211->state != IEEE80211_LINKED)
  goto dm_CheckEdcaTurbo_EXIT;


 if(priv->ieee80211->pHTInfo->IOTAction & HT_IOT_ACT_DISABLE_EDCA_TURBO)
  goto dm_CheckEdcaTurbo_EXIT;



 if(!priv->ieee80211->bis_any_nonbepkts)
 {
  curTxOkCnt = priv->stats.txbytesunicast - lastTxOkCnt;
  curRxOkCnt = priv->stats.rxbytesunicast - lastRxOkCnt;

  if(curRxOkCnt > 4*curTxOkCnt)
  {

   if(!priv->bis_cur_rdlstate || !priv->bcurrent_turbo_EDCA)
   {
    write_nic_dword(dev, EDCAPARA_BE, edca_setting_DL[pHTInfo->IOTPeer]);
    priv->bis_cur_rdlstate = 1;
   }
  }
  else
  {


   if(priv->bis_cur_rdlstate || !priv->bcurrent_turbo_EDCA)
   {
    write_nic_dword(dev, EDCAPARA_BE, edca_setting_UL[pHTInfo->IOTPeer]);
    priv->bis_cur_rdlstate = 0;
   }

  }

  priv->bcurrent_turbo_EDCA = 1;
 }
 else
 {




   if(priv->bcurrent_turbo_EDCA)
  {

   {
    u8 u1bAIFS;
    u32 u4bAcParam;
    struct ieee80211_qos_parameters *qos_parameters = &priv->ieee80211->current_network.qos_data.parameters;
    u8 mode = priv->ieee80211->mode;


    dm_init_edca_turbo(dev);
    u1bAIFS = qos_parameters->aifs[0] * ((mode&(IEEE_G|IEEE_N_24G)) ?9:20) + aSifsTime;
    u4bAcParam = ((((u32)(qos_parameters->tx_op_limit[0]))<< AC_PARAM_TXOP_LIMIT_OFFSET)|
     (((u32)(qos_parameters->cw_max[0]))<< AC_PARAM_ECW_MAX_OFFSET)|
     (((u32)(qos_parameters->cw_min[0]))<< AC_PARAM_ECW_MIN_OFFSET)|
     ((u32)u1bAIFS << AC_PARAM_AIFS_OFFSET));
    printk("===>u4bAcParam:%x, ", u4bAcParam);

    write_nic_dword(dev, EDCAPARA_BE, u4bAcParam);



    {


     PACI_AIFSN pAciAifsn = (PACI_AIFSN)&(qos_parameters->aifs[0]);
     u8 AcmCtrl = read_nic_byte( dev, AcmHwCtrl );
     if( pAciAifsn->f.ACM )
     {
      AcmCtrl |= AcmHw_BeqEn;
     }
     else
     {
      AcmCtrl &= (~AcmHw_BeqEn);
     }

     RT_TRACE( COMP_QOS,"SetHwReg8190pci(): [HW_VAR_ACM_CTRL] Write 0x%X\n", AcmCtrl ) ;
     write_nic_byte(dev, AcmHwCtrl, AcmCtrl );
    }
   }
   priv->bcurrent_turbo_EDCA = 0;
  }
 }


dm_CheckEdcaTurbo_EXIT:

 priv->ieee80211->bis_any_nonbepkts = 0;
 lastTxOkCnt = priv->stats.txbytesunicast;
 lastRxOkCnt = priv->stats.rxbytesunicast;
}
