
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct ieee80211_if_managed {int uapsd_queues; } ;
struct TYPE_2__ {struct ieee80211_if_managed mgd; } ;
struct ieee80211_sub_if_data {TYPE_1__ u; } ;
typedef int ssize_t ;


 int ERANGE ;
 int IEEE80211_WMM_IE_STA_QOSINFO_AC_MASK ;
 int kstrtou8 (char const*,int ,int*) ;

__attribute__((used)) static ssize_t ieee80211_if_parse_uapsd_queues(
 struct ieee80211_sub_if_data *sdata, const char *buf, int buflen)
{
 struct ieee80211_if_managed *ifmgd = &sdata->u.mgd;
 u8 val;
 int ret;

 ret = kstrtou8(buf, 0, &val);
 if (ret)
  return ret;

 if (val & ~IEEE80211_WMM_IE_STA_QOSINFO_AC_MASK)
  return -ERANGE;

 ifmgd->uapsd_queues = val;

 return buflen;
}
