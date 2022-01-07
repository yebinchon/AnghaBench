
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_key {int dummy; } ;


 int __ieee80211_key_destroy (struct ieee80211_key*,int) ;
 int synchronize_net () ;

__attribute__((used)) static void ieee80211_key_destroy(struct ieee80211_key *key,
      bool delay_tailroom)
{
 if (!key)
  return;





 synchronize_net();

 __ieee80211_key_destroy(key, delay_tailroom);
}
