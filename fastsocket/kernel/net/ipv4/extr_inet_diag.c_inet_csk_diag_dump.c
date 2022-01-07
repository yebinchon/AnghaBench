
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_7__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct sock {scalar_t__ sk_family; int sk_userlocks; } ;
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct netlink_callback {TYPE_3__* nlh; int skb; } ;
struct TYPE_9__ {int * s6_addr32; } ;
struct TYPE_8__ {int * s6_addr32; } ;
struct ipv6_pinfo {TYPE_2__ daddr; TYPE_1__ rcv_saddr; } ;
struct inet_sock {int dport; int num; int daddr; int rcv_saddr; } ;
struct inet_diag_req {int idiag_ext; } ;
struct inet_diag_entry {scalar_t__ family; int userlocks; int dport; int sport; int * daddr; int * saddr; } ;
struct TYPE_11__ {int pid; } ;
struct TYPE_10__ {int nlmsg_seq; } ;


 scalar_t__ AF_INET6 ;
 int INET_DIAG_REQ_BYTECODE ;
 TYPE_7__ NETLINK_CB (int ) ;
 struct inet_diag_req* NLMSG_DATA (TYPE_3__*) ;
 int NLM_F_MULTI ;
 struct ipv6_pinfo* inet6_sk (struct sock*) ;
 int inet_csk_diag_fill (struct sock*,struct sk_buff*,int ,int ,int ,int ,TYPE_3__*) ;
 int inet_diag_bc_run (int ,int ,struct inet_diag_entry*) ;
 struct inet_sock* inet_sk (struct sock*) ;
 int nla_data (struct nlattr const*) ;
 int nla_len (struct nlattr const*) ;
 scalar_t__ nlmsg_attrlen (TYPE_3__*,int) ;
 struct nlattr* nlmsg_find_attr (TYPE_3__*,int,int ) ;
 int ntohs (int ) ;

__attribute__((used)) static int inet_csk_diag_dump(struct sock *sk,
         struct sk_buff *skb,
         struct netlink_callback *cb)
{
 struct inet_diag_req *r = NLMSG_DATA(cb->nlh);

 if (nlmsg_attrlen(cb->nlh, sizeof(*r))) {
  struct inet_diag_entry entry;
  const struct nlattr *bc = nlmsg_find_attr(cb->nlh,
         sizeof(*r),
         INET_DIAG_REQ_BYTECODE);
  struct inet_sock *inet = inet_sk(sk);

  entry.family = sk->sk_family;
  {
   entry.saddr = &inet->rcv_saddr;
   entry.daddr = &inet->daddr;
  }
  entry.sport = inet->num;
  entry.dport = ntohs(inet->dport);
  entry.userlocks = sk->sk_userlocks;

  if (!inet_diag_bc_run(nla_data(bc), nla_len(bc), &entry))
   return 0;
 }

 return inet_csk_diag_fill(sk, skb, r->idiag_ext,
      NETLINK_CB(cb->skb).pid,
      cb->nlh->nlmsg_seq, NLM_F_MULTI, cb->nlh);
}
