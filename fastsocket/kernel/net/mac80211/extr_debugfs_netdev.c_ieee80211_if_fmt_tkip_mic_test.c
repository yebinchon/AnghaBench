
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_sub_if_data {int dummy; } ;
typedef int ssize_t ;


 int EOPNOTSUPP ;

__attribute__((used)) static ssize_t ieee80211_if_fmt_tkip_mic_test(
 const struct ieee80211_sub_if_data *sdata, char *buf, int buflen)
{
 return -EOPNOTSUPP;
}
