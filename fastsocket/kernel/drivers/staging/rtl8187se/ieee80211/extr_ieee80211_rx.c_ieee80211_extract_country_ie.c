
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ieee80211_network {scalar_t__ CountryIeLen; int CountryIeBuf; } ;
struct ieee80211_info_element {scalar_t__ len; int data; } ;
struct ieee80211_device {int dummy; } ;


 int Dot11d_UpdateCountryIe (struct ieee80211_device*,int *,scalar_t__,int ) ;
 int IS_COUNTRY_IE_VALID (struct ieee80211_device*) ;
 scalar_t__ IS_DOT11D_ENABLE (struct ieee80211_device*) ;
 scalar_t__ IS_EQUAL_CIE_SRC (struct ieee80211_device*,int *) ;
 int UPDATE_CIE_WATCHDOG (struct ieee80211_device*) ;
 int memcpy (int ,int ,scalar_t__) ;

__attribute__((used)) static inline void ieee80211_extract_country_ie(
 struct ieee80211_device *ieee,
 struct ieee80211_info_element *info_element,
 struct ieee80211_network *network,
 u8 * addr2
)
{
 if(IS_DOT11D_ENABLE(ieee))
 {
  if(info_element->len!= 0)
  {
   memcpy(network->CountryIeBuf, info_element->data, info_element->len);
   network->CountryIeLen = info_element->len;

   if(!IS_COUNTRY_IE_VALID(ieee))
   {
    Dot11d_UpdateCountryIe(ieee, addr2, info_element->len, info_element->data);
   }
  }






  if(IS_EQUAL_CIE_SRC(ieee, addr2) )
  {
   UPDATE_CIE_WATCHDOG(ieee);
  }
 }

}
