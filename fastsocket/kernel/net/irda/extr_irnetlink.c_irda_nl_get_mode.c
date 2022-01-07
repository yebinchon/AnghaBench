
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct net_device {int name; scalar_t__ atalk_ptr; } ;
struct irlap_cb {int mode; } ;
struct genl_info {int snd_seq; int snd_pid; } ;


 int EMSGSIZE ;
 int ENOBUFS ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IRDA_NL_ATTR_IFNAME ;
 int IRDA_NL_ATTR_MODE ;
 int IRDA_NL_CMD_GET_MODE ;
 int NLMSG_DEFAULT_SIZE ;
 int dev_put (struct net_device*) ;
 int genlmsg_end (struct sk_buff*,void*) ;
 void* genlmsg_put (struct sk_buff*,int ,int ,int *,int ,int ) ;
 int genlmsg_reply (struct sk_buff*,struct genl_info*) ;
 struct net_device* ifname_to_netdev (int *,struct genl_info*) ;
 int init_net ;
 int irda_nl_family ;
 scalar_t__ nla_put_string (struct sk_buff*,int ,int ) ;
 scalar_t__ nla_put_u32 (struct sk_buff*,int ,int ) ;
 int nlmsg_free (struct sk_buff*) ;
 struct sk_buff* nlmsg_new (int ,int ) ;

__attribute__((used)) static int irda_nl_get_mode(struct sk_buff *skb, struct genl_info *info)
{
 struct net_device * dev;
 struct irlap_cb * irlap;
 struct sk_buff *msg;
 void *hdr;
 int ret = -ENOBUFS;

 dev = ifname_to_netdev(&init_net, info);
 if (!dev)
  return -ENODEV;

 msg = nlmsg_new(NLMSG_DEFAULT_SIZE, GFP_KERNEL);
 if (!msg) {
  dev_put(dev);
  return -ENOMEM;
 }

 irlap = (struct irlap_cb *)dev->atalk_ptr;
 if (!irlap) {
  ret = -ENODEV;
  goto err_out;
 }

 hdr = genlmsg_put(msg, info->snd_pid, info->snd_seq,
     &irda_nl_family, 0, IRDA_NL_CMD_GET_MODE);
 if (hdr == ((void*)0)) {
  ret = -EMSGSIZE;
  goto err_out;
 }

 if(nla_put_string(msg, IRDA_NL_ATTR_IFNAME,
     dev->name))
  goto err_out;

 if(nla_put_u32(msg, IRDA_NL_ATTR_MODE, irlap->mode))
  goto err_out;

 genlmsg_end(msg, hdr);

 return genlmsg_reply(msg, info);

 err_out:
 nlmsg_free(msg);
 dev_put(dev);

 return ret;
}
