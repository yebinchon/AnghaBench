
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulatory_request {char* alpha2; int initiator; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int NL80211_REGDOM_SET_BY_CORE ;
 struct regulatory_request* kzalloc (int,int ) ;
 int queue_regulatory_request (struct regulatory_request*) ;

__attribute__((used)) static int regulatory_hint_core(const char *alpha2)
{
 struct regulatory_request *request;

 request = kzalloc(sizeof(struct regulatory_request), GFP_KERNEL);
 if (!request)
  return -ENOMEM;

 request->alpha2[0] = alpha2[0];
 request->alpha2[1] = alpha2[1];
 request->initiator = NL80211_REGDOM_SET_BY_CORE;

 queue_regulatory_request(request);

 return 0;
}
