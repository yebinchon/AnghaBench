
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct sk_buff {int len; scalar_t__ data; } ;
struct ieee80211_assoc_response_frame {int status; int aid; } ;


 int IEEE80211_DEBUG_MGMT (char*,int) ;
 int le16_to_cpu (int ) ;

__attribute__((used)) static inline u16 assoc_parse(struct sk_buff *skb, int *aid)
{
 struct ieee80211_assoc_response_frame *a;
 if (skb->len < sizeof(struct ieee80211_assoc_response_frame)){
  IEEE80211_DEBUG_MGMT("invalid len in auth resp: %d\n", skb->len);
  return 0xcafe;
 }

 a = (struct ieee80211_assoc_response_frame*) skb->data;
 *aid = le16_to_cpu(a->aid) & 0x3fff;
 return le16_to_cpu(a->status);
}
