
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int features; } ;
struct cfg80211_registered_device {TYPE_1__ wiphy; } ;
typedef enum nl80211_commands { ____Placeholder_nl80211_commands } nl80211_commands ;
typedef enum nl80211_auth_type { ____Placeholder_nl80211_auth_type } nl80211_auth_type ;


 int NL80211_AUTHTYPE_MAX ;
 int NL80211_AUTHTYPE_SAE ;



 int NL80211_FEATURE_SAE ;

__attribute__((used)) static bool nl80211_valid_auth_type(struct cfg80211_registered_device *rdev,
        enum nl80211_auth_type auth_type,
        enum nl80211_commands cmd)
{
 if (auth_type > NL80211_AUTHTYPE_MAX)
  return 0;

 switch (cmd) {
 case 130:
  if (!(rdev->wiphy.features & NL80211_FEATURE_SAE) &&
      auth_type == NL80211_AUTHTYPE_SAE)
   return 0;
  return 1;
 case 129:
 case 128:

  if (auth_type == NL80211_AUTHTYPE_SAE)
   return 0;
  return 1;
 default:
  return 0;
 }
}
