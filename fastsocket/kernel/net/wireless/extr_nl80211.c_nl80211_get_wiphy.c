
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct genl_info {int snd_seq; int snd_pid; struct cfg80211_registered_device** user_ptr; } ;
struct cfg80211_registered_device {int dummy; } ;


 int ENOBUFS ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int genlmsg_reply (struct sk_buff*,struct genl_info*) ;
 scalar_t__ nl80211_send_wiphy (struct cfg80211_registered_device*,struct sk_buff*,int ,int ,int ,int,int *,int *,int *) ;
 int nlmsg_free (struct sk_buff*) ;
 struct sk_buff* nlmsg_new (int,int ) ;

__attribute__((used)) static int nl80211_get_wiphy(struct sk_buff *skb, struct genl_info *info)
{
 struct sk_buff *msg;
 struct cfg80211_registered_device *dev = info->user_ptr[0];

 msg = nlmsg_new(4096, GFP_KERNEL);
 if (!msg)
  return -ENOMEM;

 if (nl80211_send_wiphy(dev, msg, info->snd_pid, info->snd_seq, 0,
          0, ((void*)0), ((void*)0), ((void*)0)) < 0) {
  nlmsg_free(msg);
  return -ENOBUFS;
 }

 return genlmsg_reply(msg, info);
}
