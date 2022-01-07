
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
struct ieee80211_tx_queue_params {int aifs; int acm; int uapsd; int txop; void* cw_max; void* cw_min; } ;
struct TYPE_9__ {int qos; } ;
struct TYPE_10__ {TYPE_4__ bss_conf; } ;
struct ieee80211_if_managed {int flags; int uapsd_queues; int wmm_last_param_set; } ;
struct TYPE_6__ {struct ieee80211_if_managed mgd; } ;
struct ieee80211_sub_if_data {int wmm_acm; TYPE_5__ vif; struct ieee80211_tx_queue_params* tx_conf; TYPE_1__ u; } ;
struct TYPE_8__ {scalar_t__ queues; } ;
struct ieee80211_local {TYPE_3__ hw; TYPE_2__* ops; } ;
typedef int params ;
struct TYPE_7__ {int conf_tx; } ;


 int BIT (int) ;
 scalar_t__ IEEE80211_NUM_ACS ;
 int IEEE80211_STA_UAPSD_ENABLED ;
 int IEEE80211_WMM_IE_STA_QOSINFO_AC_BE ;
 int IEEE80211_WMM_IE_STA_QOSINFO_AC_BK ;
 int IEEE80211_WMM_IE_STA_QOSINFO_AC_VI ;
 int IEEE80211_WMM_IE_STA_QOSINFO_AC_VO ;
 scalar_t__ drv_conf_tx (struct ieee80211_local*,struct ieee80211_sub_if_data*,int,struct ieee80211_tx_queue_params*) ;
 void* ecw2cw (int const) ;
 int get_unaligned_le16 (int const*) ;
 int memset (struct ieee80211_tx_queue_params*,int ,int) ;
 int mlme_dbg (struct ieee80211_sub_if_data*,char*,int,int,int,int,void*,void*,int ,int) ;
 int sdata_err (struct ieee80211_sub_if_data*,char*,int) ;

__attribute__((used)) static bool ieee80211_sta_wmm_params(struct ieee80211_local *local,
         struct ieee80211_sub_if_data *sdata,
         const u8 *wmm_param, size_t wmm_param_len)
{
 struct ieee80211_tx_queue_params params;
 struct ieee80211_if_managed *ifmgd = &sdata->u.mgd;
 size_t left;
 int count;
 const u8 *pos;
 u8 uapsd_queues = 0;

 if (!local->ops->conf_tx)
  return 0;

 if (local->hw.queues < IEEE80211_NUM_ACS)
  return 0;

 if (!wmm_param)
  return 0;

 if (wmm_param_len < 8 || wmm_param[5] != 1)
  return 0;

 if (ifmgd->flags & IEEE80211_STA_UAPSD_ENABLED)
  uapsd_queues = ifmgd->uapsd_queues;

 count = wmm_param[6] & 0x0f;
 if (count == ifmgd->wmm_last_param_set)
  return 0;
 ifmgd->wmm_last_param_set = count;

 pos = wmm_param + 8;
 left = wmm_param_len - 8;

 memset(&params, 0, sizeof(params));

 sdata->wmm_acm = 0;
 for (; left >= 4; left -= 4, pos += 4) {
  int aci = (pos[0] >> 5) & 0x03;
  int acm = (pos[0] >> 4) & 0x01;
  bool uapsd = 0;
  int queue;

  switch (aci) {
  case 1:
   queue = 3;
   if (acm)
    sdata->wmm_acm |= BIT(1) | BIT(2);
   if (uapsd_queues & IEEE80211_WMM_IE_STA_QOSINFO_AC_BK)
    uapsd = 1;
   break;
  case 2:
   queue = 1;
   if (acm)
    sdata->wmm_acm |= BIT(4) | BIT(5);
   if (uapsd_queues & IEEE80211_WMM_IE_STA_QOSINFO_AC_VI)
    uapsd = 1;
   break;
  case 3:
   queue = 0;
   if (acm)
    sdata->wmm_acm |= BIT(6) | BIT(7);
   if (uapsd_queues & IEEE80211_WMM_IE_STA_QOSINFO_AC_VO)
    uapsd = 1;
   break;
  case 0:
  default:
   queue = 2;
   if (acm)
    sdata->wmm_acm |= BIT(0) | BIT(3);
   if (uapsd_queues & IEEE80211_WMM_IE_STA_QOSINFO_AC_BE)
    uapsd = 1;
   break;
  }

  params.aifs = pos[0] & 0x0f;
  params.cw_max = ecw2cw((pos[1] & 0xf0) >> 4);
  params.cw_min = ecw2cw(pos[1] & 0x0f);
  params.txop = get_unaligned_le16(pos + 2);
  params.acm = acm;
  params.uapsd = uapsd;

  mlme_dbg(sdata,
    "WMM queue=%d aci=%d acm=%d aifs=%d cWmin=%d cWmax=%d txop=%d uapsd=%d\n",
    queue, aci, acm,
    params.aifs, params.cw_min, params.cw_max,
    params.txop, params.uapsd);
  sdata->tx_conf[queue] = params;
  if (drv_conf_tx(local, sdata, queue, &params))
   sdata_err(sdata,
      "failed to set TX queue parameters for queue %d\n",
      queue);
 }


 sdata->vif.bss_conf.qos = 1;
 return 1;
}
