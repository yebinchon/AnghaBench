
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_network {scalar_t__ rates_ex_len; int rates_len; } ;



short ieee80211_is_54g(struct ieee80211_network net)
{
 return ((net.rates_ex_len > 0) || (net.rates_len > 4));
}
