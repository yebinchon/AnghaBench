
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct cfg80211_bss_ies {int len; int data; } ;
struct cfg80211_bss {scalar_t__ const* bssid; int capability; int ies; TYPE_1__* channel; } ;
typedef enum bss_compare_mode { ____Placeholder_bss_compare_mode } bss_compare_mode ;
struct TYPE_2__ {int center_freq; } ;





 scalar_t__ WLAN_CAPABILITY_IS_STA_BSS (int ) ;
 int WLAN_EID_MESH_CONFIG ;
 int WLAN_EID_MESH_ID ;
 int WLAN_EID_SSID ;
 scalar_t__* cfg80211_find_ie (int ,int ,int ) ;
 int memcmp (scalar_t__ const*,scalar_t__ const*,scalar_t__ const) ;
 struct cfg80211_bss_ies* rcu_access_pointer (int ) ;

__attribute__((used)) static int cmp_bss(struct cfg80211_bss *a,
     struct cfg80211_bss *b,
     enum bss_compare_mode mode)
{
 const struct cfg80211_bss_ies *a_ies, *b_ies;
 const u8 *ie1 = ((void*)0);
 const u8 *ie2 = ((void*)0);
 int i, r;

 if (a->channel != b->channel)
  return b->channel->center_freq - a->channel->center_freq;

 a_ies = rcu_access_pointer(a->ies);
 if (!a_ies)
  return -1;
 b_ies = rcu_access_pointer(b->ies);
 if (!b_ies)
  return 1;

 if (WLAN_CAPABILITY_IS_STA_BSS(a->capability))
  ie1 = cfg80211_find_ie(WLAN_EID_MESH_ID,
           a_ies->data, a_ies->len);
 if (WLAN_CAPABILITY_IS_STA_BSS(b->capability))
  ie2 = cfg80211_find_ie(WLAN_EID_MESH_ID,
           b_ies->data, b_ies->len);
 if (ie1 && ie2) {
  int mesh_id_cmp;

  if (ie1[1] == ie2[1])
   mesh_id_cmp = memcmp(ie1 + 2, ie2 + 2, ie1[1]);
  else
   mesh_id_cmp = ie2[1] - ie1[1];

  ie1 = cfg80211_find_ie(WLAN_EID_MESH_CONFIG,
           a_ies->data, a_ies->len);
  ie2 = cfg80211_find_ie(WLAN_EID_MESH_CONFIG,
           b_ies->data, b_ies->len);
  if (ie1 && ie2) {
   if (mesh_id_cmp)
    return mesh_id_cmp;
   if (ie1[1] != ie2[1])
    return ie2[1] - ie1[1];
   return memcmp(ie1 + 2, ie2 + 2, ie1[1]);
  }
 }





 r = memcmp(a->bssid, b->bssid, sizeof(a->bssid));
 if (r)
  return r;

 ie1 = cfg80211_find_ie(WLAN_EID_SSID, a_ies->data, a_ies->len);
 ie2 = cfg80211_find_ie(WLAN_EID_SSID, b_ies->data, b_ies->len);

 if (!ie1 && !ie2)
  return 0;
 if (!ie1)
  return -1;
 if (!ie2)
  return 1;

 switch (mode) {
 case 129:
  return ie2[1];
 case 128:
 default:

  if (ie1[1] != ie2[1])
   return ie2[1] - ie1[1];
  return memcmp(ie1 + 2, ie2 + 2, ie1[1]);
 case 130:
  if (ie1[1] != ie2[1])
   return ie2[1] - ie1[1];

  for (i = 0; i < ie2[1]; i++)
   if (ie2[i + 2])
    return -1;
  return 0;
 }
}
