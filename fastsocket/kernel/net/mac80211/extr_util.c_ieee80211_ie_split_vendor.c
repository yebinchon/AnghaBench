
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;


 scalar_t__ const WLAN_EID_VENDOR_SPECIFIC ;

size_t ieee80211_ie_split_vendor(const u8 *ies, size_t ielen, size_t offset)
{
 size_t pos = offset;

 while (pos < ielen && ies[pos] != WLAN_EID_VENDOR_SPECIFIC)
  pos += 2 + ies[pos + 1];

 return pos;
}
