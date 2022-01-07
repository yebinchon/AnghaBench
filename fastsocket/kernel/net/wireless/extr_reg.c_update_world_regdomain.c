
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulatory_request {int dummy; } ;
struct ieee80211_regdomain {int dummy; } ;


 int WARN_ON (int) ;
 struct ieee80211_regdomain const* cfg80211_world_regdom ;
 struct regulatory_request* get_last_request () ;
 int reset_regdomains (int,struct ieee80211_regdomain const*) ;

__attribute__((used)) static void update_world_regdomain(const struct ieee80211_regdomain *rd)
{
 struct regulatory_request *lr;

 lr = get_last_request();

 WARN_ON(!lr);

 reset_regdomains(0, rd);

 cfg80211_world_regdom = rd;
}
