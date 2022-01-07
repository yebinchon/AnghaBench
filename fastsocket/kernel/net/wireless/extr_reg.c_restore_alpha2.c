
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int REG_DBG_PRINT (char*,...) ;
 char* ieee80211_regdom ;
 scalar_t__ is_user_regdom_saved () ;
 int is_world_regdom (char*) ;
 char* user_alpha2 ;

__attribute__((used)) static void restore_alpha2(char *alpha2, bool reset_user)
{

 alpha2[0] = '9';
 alpha2[1] = '7';


 if (is_user_regdom_saved()) {

  if (reset_user) {
   REG_DBG_PRINT("Restoring regulatory settings including user preference\n");
   user_alpha2[0] = '9';
   user_alpha2[1] = '7';






   if (!is_world_regdom(ieee80211_regdom)) {
    REG_DBG_PRINT("Keeping preference on module parameter ieee80211_regdom: %c%c\n",
           ieee80211_regdom[0], ieee80211_regdom[1]);
    alpha2[0] = ieee80211_regdom[0];
    alpha2[1] = ieee80211_regdom[1];
   }
  } else {
   REG_DBG_PRINT("Restoring regulatory settings while preserving user preference for: %c%c\n",
          user_alpha2[0], user_alpha2[1]);
   alpha2[0] = user_alpha2[0];
   alpha2[1] = user_alpha2[1];
  }
 } else if (!is_world_regdom(ieee80211_regdom)) {
  REG_DBG_PRINT("Keeping preference on module parameter ieee80211_regdom: %c%c\n",
         ieee80211_regdom[0], ieee80211_regdom[1]);
  alpha2[0] = ieee80211_regdom[0];
  alpha2[1] = ieee80211_regdom[1];
 } else
  REG_DBG_PRINT("Restoring regulatory settings\n");
}
