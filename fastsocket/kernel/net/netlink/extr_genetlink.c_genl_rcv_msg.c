
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int sk; } ;
struct nlmsghdr {scalar_t__ nlmsg_len; int nlmsg_flags; int nlmsg_seq; int nlmsg_type; } ;
struct netlink_dump_control {int done; int * dump; } ;
struct net {int genl_sock; } ;
struct genlmsghdr {int cmd; } ;
struct genl_ops {int flags; int (* doit ) (struct sk_buff*,struct genl_info*) ;int policy; int done; int * dumpit; } ;
struct genl_info {scalar_t__ attrs; void* userhdr; void* genlhdr; struct nlmsghdr* nlhdr; int snd_pid; int snd_seq; } ;
struct genl_family {int hdrsize; scalar_t__ attrbuf; int maxattr; int netnsok; } ;
struct TYPE_2__ {int pid; } ;


 int CAP_NET_ADMIN ;
 int EINVAL ;
 int ENOENT ;
 int EOPNOTSUPP ;
 int EPERM ;
 int GENL_ADMIN_PERM ;
 int GENL_HDRLEN ;
 TYPE_1__ NETLINK_CB (struct sk_buff*) ;
 int NLM_F_DUMP ;
 struct genl_family* genl_family_find_byid (int ) ;
 struct genl_ops* genl_get_cmd (int ,struct genl_family*) ;
 int genl_info_net_set (struct genl_info*,struct net*) ;
 int genl_lock () ;
 int genl_unlock () ;
 int init_net ;
 int net_eq (struct net*,int *) ;
 int netlink_dump_start (int ,struct sk_buff*,struct nlmsghdr*,struct netlink_dump_control*) ;
 void* nlmsg_data (struct nlmsghdr*) ;
 scalar_t__ nlmsg_msg_size (int) ;
 int nlmsg_parse (struct nlmsghdr*,int,scalar_t__,int ,int ) ;
 scalar_t__ security_netlink_recv (struct sk_buff*,int ) ;
 struct net* sock_net (int ) ;
 int stub1 (struct sk_buff*,struct genl_info*) ;

__attribute__((used)) static int genl_rcv_msg(struct sk_buff *skb, struct nlmsghdr *nlh)
{
 struct genl_ops *ops;
 struct genl_family *family;
 struct net *net = sock_net(skb->sk);
 struct genl_info info;
 struct genlmsghdr *hdr = nlmsg_data(nlh);
 int hdrlen, err;

 family = genl_family_find_byid(nlh->nlmsg_type);
 if (family == ((void*)0))
  return -ENOENT;


 if (!family->netnsok && !net_eq(net, &init_net))
  return -ENOENT;

 hdrlen = GENL_HDRLEN + family->hdrsize;
 if (nlh->nlmsg_len < nlmsg_msg_size(hdrlen))
  return -EINVAL;

 ops = genl_get_cmd(hdr->cmd, family);
 if (ops == ((void*)0))
  return -EOPNOTSUPP;

 if ((ops->flags & GENL_ADMIN_PERM) &&
     security_netlink_recv(skb, CAP_NET_ADMIN))
  return -EPERM;

 if (nlh->nlmsg_flags & NLM_F_DUMP) {
  if (ops->dumpit == ((void*)0))
   return -EOPNOTSUPP;

  genl_unlock();
  {
   struct netlink_dump_control c = {
    .dump = ops->dumpit,
    .done = ops->done,
   };
   err = netlink_dump_start(net->genl_sock, skb, nlh, &c);
  }
  genl_lock();
  return err;
 }

 if (ops->doit == ((void*)0))
  return -EOPNOTSUPP;

 if (family->attrbuf) {
  err = nlmsg_parse(nlh, hdrlen, family->attrbuf, family->maxattr,
      ops->policy);
  if (err < 0)
   return err;
 }

 info.snd_seq = nlh->nlmsg_seq;
 info.snd_pid = NETLINK_CB(skb).pid;
 info.nlhdr = nlh;
 info.genlhdr = nlmsg_data(nlh);
 info.userhdr = nlmsg_data(nlh) + GENL_HDRLEN;
 info.attrs = family->attrbuf;
 genl_info_net_set(&info, net);

 return ops->doit(skb, &info);
}
