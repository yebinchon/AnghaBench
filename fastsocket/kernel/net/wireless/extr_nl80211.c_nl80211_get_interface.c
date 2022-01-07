
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wireless_dev {int dummy; } ;
struct sk_buff {int dummy; } ;
struct genl_info {int snd_seq; int snd_pid; struct wireless_dev** user_ptr; } ;
typedef struct wireless_dev cfg80211_registered_device ;


 int ENOBUFS ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int NLMSG_DEFAULT_SIZE ;
 int genlmsg_reply (struct sk_buff*,struct genl_info*) ;
 scalar_t__ nl80211_send_iface (struct sk_buff*,int ,int ,int ,struct wireless_dev*,struct wireless_dev*) ;
 int nlmsg_free (struct sk_buff*) ;
 struct sk_buff* nlmsg_new (int ,int ) ;

__attribute__((used)) static int nl80211_get_interface(struct sk_buff *skb, struct genl_info *info)
{
 struct sk_buff *msg;
 struct cfg80211_registered_device *dev = info->user_ptr[0];
 struct wireless_dev *wdev = info->user_ptr[1];

 msg = nlmsg_new(NLMSG_DEFAULT_SIZE, GFP_KERNEL);
 if (!msg)
  return -ENOMEM;

 if (nl80211_send_iface(msg, info->snd_pid, info->snd_seq, 0,
          dev, wdev) < 0) {
  nlmsg_free(msg);
  return -ENOBUFS;
 }

 return genlmsg_reply(msg, info);
}
