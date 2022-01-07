
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rtmsg {int rtm_dst_len; int rtm_type; int * rta_oif; int * rta_prefsrc; int * rta_dst; int rtm_scope; int rtm_protocol; int rtm_table; } ;
struct nlmsghdr {int nlmsg_len; int nlmsg_type; int nlmsg_flags; scalar_t__ nlmsg_seq; scalar_t__ nlmsg_pid; } ;
struct dn_kern_rta {int rtm_dst_len; int rtm_type; int * rta_oif; int * rta_prefsrc; int * rta_dst; int rtm_scope; int rtm_protocol; int rtm_table; } ;
struct dn_ifaddr {TYPE_2__* ifa_dev; int ifa_local; } ;
struct dn_fib_table {int (* delete ) (struct dn_fib_table*,struct rtmsg*,struct rtmsg*,struct nlmsghdr*,int *) ;int (* insert ) (struct dn_fib_table*,struct rtmsg*,struct rtmsg*,struct nlmsghdr*,int *) ;int n; } ;
typedef int rta ;
typedef int req ;
typedef int __le16 ;
struct TYPE_4__ {TYPE_1__* dev; } ;
struct TYPE_3__ {int ifindex; } ;


 int NLM_F_APPEND ;
 int NLM_F_CREATE ;
 int NLM_F_REQUEST ;
 int RTM_NEWROUTE ;
 int RTN_LOCAL ;
 int RTN_UNICAST ;
 int RTPROT_KERNEL ;
 int RT_MIN_TABLE ;
 int RT_SCOPE_HOST ;
 int RT_SCOPE_LINK ;
 int RT_TABLE_LOCAL ;
 struct dn_fib_table* dn_fib_get_table (int ,int) ;
 int memset (struct rtmsg*,int ,int) ;
 int stub1 (struct dn_fib_table*,struct rtmsg*,struct rtmsg*,struct nlmsghdr*,int *) ;
 int stub2 (struct dn_fib_table*,struct rtmsg*,struct rtmsg*,struct nlmsghdr*,int *) ;

__attribute__((used)) static void fib_magic(int cmd, int type, __le16 dst, int dst_len, struct dn_ifaddr *ifa)
{
 struct dn_fib_table *tb;
 struct {
  struct nlmsghdr nlh;
  struct rtmsg rtm;
 } req;
 struct dn_kern_rta rta;

 memset(&req.rtm, 0, sizeof(req.rtm));
 memset(&rta, 0, sizeof(rta));

 if (type == RTN_UNICAST)
  tb = dn_fib_get_table(RT_MIN_TABLE, 1);
 else
  tb = dn_fib_get_table(RT_TABLE_LOCAL, 1);

 if (tb == ((void*)0))
  return;

 req.nlh.nlmsg_len = sizeof(req);
 req.nlh.nlmsg_type = cmd;
 req.nlh.nlmsg_flags = NLM_F_REQUEST|NLM_F_CREATE|NLM_F_APPEND;
 req.nlh.nlmsg_pid = 0;
 req.nlh.nlmsg_seq = 0;

 req.rtm.rtm_dst_len = dst_len;
 req.rtm.rtm_table = tb->n;
 req.rtm.rtm_protocol = RTPROT_KERNEL;
 req.rtm.rtm_scope = (type != RTN_LOCAL ? RT_SCOPE_LINK : RT_SCOPE_HOST);
 req.rtm.rtm_type = type;

 rta.rta_dst = &dst;
 rta.rta_prefsrc = &ifa->ifa_local;
 rta.rta_oif = &ifa->ifa_dev->dev->ifindex;

 if (cmd == RTM_NEWROUTE)
  tb->insert(tb, &req.rtm, &rta, &req.nlh, ((void*)0));
 else
  tb->delete(tb, &req.rtm, &rta, &req.nlh, ((void*)0));
}
