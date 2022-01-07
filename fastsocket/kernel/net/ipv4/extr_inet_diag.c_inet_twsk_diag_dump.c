
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_7__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct netlink_callback {TYPE_3__* nlh; int skb; } ;
struct inet_timewait_sock {scalar_t__ tw_family; int tw_dport; int tw_num; int tw_daddr; int tw_rcv_saddr; } ;
struct inet_diag_req {int idiag_ext; } ;
struct inet_diag_entry {scalar_t__ family; scalar_t__ userlocks; int dport; int sport; int * daddr; int * saddr; } ;
struct TYPE_9__ {int * s6_addr32; } ;
struct TYPE_8__ {int * s6_addr32; } ;
struct inet6_timewait_sock {TYPE_2__ tw_v6_daddr; TYPE_1__ tw_v6_rcv_saddr; } ;
struct TYPE_11__ {int pid; } ;
struct TYPE_10__ {int nlmsg_seq; } ;


 scalar_t__ AF_INET6 ;
 int INET_DIAG_REQ_BYTECODE ;
 TYPE_7__ NETLINK_CB (int ) ;
 struct inet_diag_req* NLMSG_DATA (TYPE_3__*) ;
 int NLM_F_MULTI ;
 struct inet6_timewait_sock* inet6_twsk (struct sock*) ;
 int inet_diag_bc_run (int ,int ,struct inet_diag_entry*) ;
 int inet_twsk_diag_fill (struct inet_timewait_sock*,struct sk_buff*,int ,int ,int ,int ,TYPE_3__*) ;
 int nla_data (struct nlattr const*) ;
 int nla_len (struct nlattr const*) ;
 scalar_t__ nlmsg_attrlen (TYPE_3__*,int) ;
 struct nlattr* nlmsg_find_attr (TYPE_3__*,int,int ) ;
 int ntohs (int ) ;

__attribute__((used)) static int inet_twsk_diag_dump(struct inet_timewait_sock *tw,
          struct sk_buff *skb,
          struct netlink_callback *cb)
{
 struct inet_diag_req *r = NLMSG_DATA(cb->nlh);

 if (nlmsg_attrlen(cb->nlh, sizeof(*r))) {
  struct inet_diag_entry entry;
  const struct nlattr *bc = nlmsg_find_attr(cb->nlh,
         sizeof(*r),
         INET_DIAG_REQ_BYTECODE);

  entry.family = tw->tw_family;
  {
   entry.saddr = &tw->tw_rcv_saddr;
   entry.daddr = &tw->tw_daddr;
  }
  entry.sport = tw->tw_num;
  entry.dport = ntohs(tw->tw_dport);
  entry.userlocks = 0;

  if (!inet_diag_bc_run(nla_data(bc), nla_len(bc), &entry))
   return 0;
 }

 return inet_twsk_diag_fill(tw, skb, r->idiag_ext,
       NETLINK_CB(cb->skb).pid,
       cb->nlh->nlmsg_seq, NLM_F_MULTI, cb->nlh);
}
