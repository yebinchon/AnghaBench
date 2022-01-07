
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sock {int (* sk_error_report ) (struct sock*) ;int sk_err; } ;
struct sk_buff {TYPE_1__* sk; } ;
struct nlmsghdr {int nlmsg_len; int nlmsg_seq; } ;
struct nlmsgerr {int error; int msg; } ;
struct TYPE_5__ {int pid; } ;
struct TYPE_4__ {int sk_protocol; } ;


 int ENOBUFS ;
 int GFP_KERNEL ;
 int MSG_DONTWAIT ;
 TYPE_3__ NETLINK_CB (struct sk_buff*) ;
 int NLMSG_ERROR ;
 struct nlmsghdr* __nlmsg_put (struct sk_buff*,int ,int ,int ,size_t,int ) ;
 int memcpy (int *,struct nlmsghdr*,int) ;
 struct sock* netlink_lookup (int ,int ,int ) ;
 int netlink_unicast (TYPE_1__*,struct sk_buff*,int ,int ) ;
 struct nlmsgerr* nlmsg_data (struct nlmsghdr*) ;
 scalar_t__ nlmsg_len (struct nlmsghdr*) ;
 struct sk_buff* nlmsg_new (size_t,int ) ;
 int sock_net (TYPE_1__*) ;
 int sock_put (struct sock*) ;
 int stub1 (struct sock*) ;

void netlink_ack(struct sk_buff *in_skb, struct nlmsghdr *nlh, int err)
{
 struct sk_buff *skb;
 struct nlmsghdr *rep;
 struct nlmsgerr *errmsg;
 size_t payload = sizeof(*errmsg);


 if (err)
  payload += nlmsg_len(nlh);

 skb = nlmsg_new(payload, GFP_KERNEL);
 if (!skb) {
  struct sock *sk;

  sk = netlink_lookup(sock_net(in_skb->sk),
        in_skb->sk->sk_protocol,
        NETLINK_CB(in_skb).pid);
  if (sk) {
   sk->sk_err = ENOBUFS;
   sk->sk_error_report(sk);
   sock_put(sk);
  }
  return;
 }

 rep = __nlmsg_put(skb, NETLINK_CB(in_skb).pid, nlh->nlmsg_seq,
     NLMSG_ERROR, payload, 0);
 errmsg = nlmsg_data(rep);
 errmsg->error = err;
 memcpy(&errmsg->msg, nlh, err ? nlh->nlmsg_len : sizeof(*nlh));
 netlink_unicast(in_skb->sk, skb, NETLINK_CB(in_skb).pid, MSG_DONTWAIT);
}
