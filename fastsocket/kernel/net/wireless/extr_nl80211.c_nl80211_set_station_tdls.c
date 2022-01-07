
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct station_parameters {void* vht_capa; void* ht_capa; } ;
struct genl_info {scalar_t__* attrs; } ;


 size_t NL80211_ATTR_HT_CAPABILITY ;
 size_t NL80211_ATTR_VHT_CAPABILITY ;
 int nl80211_parse_sta_wme (struct genl_info*,struct station_parameters*) ;
 void* nla_data (scalar_t__) ;

__attribute__((used)) static int nl80211_set_station_tdls(struct genl_info *info,
        struct station_parameters *params)
{

 if (info->attrs[NL80211_ATTR_HT_CAPABILITY])
  params->ht_capa =
   nla_data(info->attrs[NL80211_ATTR_HT_CAPABILITY]);
 if (info->attrs[NL80211_ATTR_VHT_CAPABILITY])
  params->vht_capa =
   nla_data(info->attrs[NL80211_ATTR_VHT_CAPABILITY]);

 return nl80211_parse_sta_wme(info, params);
}
