
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ieee80211_if_managed {unsigned long uapsd_max_sp_len; } ;
struct TYPE_2__ {struct ieee80211_if_managed mgd; } ;
struct ieee80211_sub_if_data {TYPE_1__ u; } ;
typedef int ssize_t ;


 int EINVAL ;
 int ERANGE ;
 unsigned long IEEE80211_WMM_IE_STA_QOSINFO_SP_MASK ;
 int kstrtoul (char const*,int ,unsigned long*) ;

__attribute__((used)) static ssize_t ieee80211_if_parse_uapsd_max_sp_len(
 struct ieee80211_sub_if_data *sdata, const char *buf, int buflen)
{
 struct ieee80211_if_managed *ifmgd = &sdata->u.mgd;
 unsigned long val;
 int ret;

 ret = kstrtoul(buf, 0, &val);
 if (ret)
  return -EINVAL;

 if (val & ~IEEE80211_WMM_IE_STA_QOSINFO_SP_MASK)
  return -ERANGE;

 ifmgd->uapsd_max_sp_len = val;

 return buflen;
}
