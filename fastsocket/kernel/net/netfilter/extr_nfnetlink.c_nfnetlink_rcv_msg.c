
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u_int8_t ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {scalar_t__ nlmsg_len; int nlmsg_type; } ;
struct nlattr {int dummy; } ;
struct nfnl_callback {int (* call ) (int ,struct sk_buff*,struct nlmsghdr*,struct nlattr const**) ;} ;
struct nfnetlink_subsystem {TYPE_1__* cb; } ;
struct nfgenmsg {int dummy; } ;
struct TYPE_2__ {int policy; int attr_count; } ;


 int CAP_NET_ADMIN ;
 int EAGAIN ;
 int EINVAL ;
 int EPERM ;
 size_t NFNL_MSG_TYPE (int) ;
 int NFNL_SUBSYS_ID (int) ;
 scalar_t__ NLMSG_LENGTH (int) ;
 int NLMSG_SPACE (int) ;
 struct nfnl_callback* nfnetlink_find_client (int,struct nfnetlink_subsystem const*) ;
 struct nfnetlink_subsystem* nfnetlink_get_subsys (int) ;
 int nfnl ;
 int nfnl_lock () ;
 int nfnl_unlock () ;
 int nla_parse (struct nlattr**,int ,struct nlattr*,int,int ) ;
 int request_module (char*,int ) ;
 scalar_t__ security_netlink_recv (struct sk_buff*,int ) ;
 int stub1 (int ,struct sk_buff*,struct nlmsghdr*,struct nlattr const**) ;

__attribute__((used)) static int nfnetlink_rcv_msg(struct sk_buff *skb, struct nlmsghdr *nlh)
{
 const struct nfnl_callback *nc;
 const struct nfnetlink_subsystem *ss;
 int type, err;

 if (security_netlink_recv(skb, CAP_NET_ADMIN))
  return -EPERM;


 if (nlh->nlmsg_len < NLMSG_LENGTH(sizeof(struct nfgenmsg)))
  return 0;

 type = nlh->nlmsg_type;
replay:
 ss = nfnetlink_get_subsys(type);
 if (!ss) {







   return -EINVAL;
 }

 nc = nfnetlink_find_client(type, ss);
 if (!nc)
  return -EINVAL;

 {
  int min_len = NLMSG_SPACE(sizeof(struct nfgenmsg));
  u_int8_t cb_id = NFNL_MSG_TYPE(nlh->nlmsg_type);
  struct nlattr *cda[ss->cb[cb_id].attr_count + 1];
  struct nlattr *attr = (void *)nlh + min_len;
  int attrlen = nlh->nlmsg_len - min_len;

  err = nla_parse(cda, ss->cb[cb_id].attr_count,
    attr, attrlen, ss->cb[cb_id].policy);
  if (err < 0)
   return err;

  err = nc->call(nfnl, skb, nlh, (const struct nlattr **)cda);
  if (err == -EAGAIN)
   goto replay;
  return err;
 }
}
