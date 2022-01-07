
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulatory_request {char* alpha2; int user_reg_hint_type; int initiator; int wiphy_idx; } ;
typedef enum nl80211_user_reg_hint_type { ____Placeholder_nl80211_user_reg_hint_type } nl80211_user_reg_hint_type ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int NL80211_REGDOM_SET_BY_USER ;
 scalar_t__ WARN_ON (int) ;
 int WIPHY_IDX_INVALID ;
 struct regulatory_request* kzalloc (int,int ) ;
 int queue_regulatory_request (struct regulatory_request*) ;

int regulatory_hint_user(const char *alpha2,
    enum nl80211_user_reg_hint_type user_reg_hint_type)
{
 struct regulatory_request *request;

 if (WARN_ON(!alpha2))
  return -EINVAL;

 request = kzalloc(sizeof(struct regulatory_request), GFP_KERNEL);
 if (!request)
  return -ENOMEM;

 request->wiphy_idx = WIPHY_IDX_INVALID;
 request->alpha2[0] = alpha2[0];
 request->alpha2[1] = alpha2[1];
 request->initiator = NL80211_REGDOM_SET_BY_USER;
 request->user_reg_hint_type = user_reg_hint_type;

 queue_regulatory_request(request);

 return 0;
}
