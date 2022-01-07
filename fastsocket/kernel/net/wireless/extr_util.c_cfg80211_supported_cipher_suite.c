
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct wiphy {int n_cipher_suites; scalar_t__* cipher_suites; } ;



bool cfg80211_supported_cipher_suite(struct wiphy *wiphy, u32 cipher)
{
 int i;
 for (i = 0; i < wiphy->n_cipher_suites; i++)
  if (cipher == wiphy->cipher_suites[i])
   return 1;
 return 0;
}
