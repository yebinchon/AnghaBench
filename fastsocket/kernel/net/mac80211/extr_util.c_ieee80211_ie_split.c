
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;


 scalar_t__ ieee80211_id_in_list (scalar_t__ const*,int,scalar_t__ const) ;

size_t ieee80211_ie_split(const u8 *ies, size_t ielen,
     const u8 *ids, int n_ids, size_t offset)
{
 size_t pos = offset;

 while (pos < ielen && ieee80211_id_in_list(ids, n_ids, ies[pos]))
  pos += 2 + ies[pos + 1];

 return pos;
}
