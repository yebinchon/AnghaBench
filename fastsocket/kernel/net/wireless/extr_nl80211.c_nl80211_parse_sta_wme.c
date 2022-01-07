
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct station_parameters {int uapsd_queues; int max_sp; int sta_modify_mask; } ;
struct nlattr {int dummy; } ;
struct genl_info {struct nlattr** attrs; } ;


 int EINVAL ;
 int IEEE80211_WMM_IE_STA_QOSINFO_AC_MASK ;
 int IEEE80211_WMM_IE_STA_QOSINFO_SP_MASK ;
 size_t NL80211_ATTR_STA_WME ;
 int NL80211_STA_WME_MAX ;
 size_t NL80211_STA_WME_MAX_SP ;
 size_t NL80211_STA_WME_UAPSD_QUEUES ;
 int STATION_PARAM_APPLY_UAPSD ;
 int nl80211_sta_wme_policy ;
 void* nla_get_u8 (struct nlattr*) ;
 int nla_parse_nested (struct nlattr**,int ,struct nlattr*,int ) ;

__attribute__((used)) static int nl80211_parse_sta_wme(struct genl_info *info,
     struct station_parameters *params)
{
 struct nlattr *tb[NL80211_STA_WME_MAX + 1];
 struct nlattr *nla;
 int err;


 if (!info->attrs[NL80211_ATTR_STA_WME])
  return 0;

 nla = info->attrs[NL80211_ATTR_STA_WME];
 err = nla_parse_nested(tb, NL80211_STA_WME_MAX, nla,
          nl80211_sta_wme_policy);
 if (err)
  return err;

 if (tb[NL80211_STA_WME_UAPSD_QUEUES])
  params->uapsd_queues = nla_get_u8(
   tb[NL80211_STA_WME_UAPSD_QUEUES]);
 if (params->uapsd_queues & ~IEEE80211_WMM_IE_STA_QOSINFO_AC_MASK)
  return -EINVAL;

 if (tb[NL80211_STA_WME_MAX_SP])
  params->max_sp = nla_get_u8(tb[NL80211_STA_WME_MAX_SP]);

 if (params->max_sp & ~IEEE80211_WMM_IE_STA_QOSINFO_SP_MASK)
  return -EINVAL;

 params->sta_modify_mask |= STATION_PARAM_APPLY_UAPSD;

 return 0;
}
