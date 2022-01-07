
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct udphdr {int dest; int source; } ;
struct udp_table {int dummy; } ;
struct sock {scalar_t__ sk_state; int sk_err; int (* sk_error_report ) (struct sock*) ;} ;
struct sk_buff {TYPE_3__* dev; scalar_t__ data; } ;
struct net {int dummy; } ;
struct iphdr {int ihl; int saddr; int daddr; } ;
struct inet_sock {int recverr; int pmtudisc; } ;
struct TYPE_6__ {int ifindex; } ;
struct TYPE_5__ {int fatal; int errno; } ;
struct TYPE_4__ {int type; int code; } ;


 int EHOSTUNREACH ;
 int EMSGSIZE ;
 int EPROTO ;

 int const ICMP_FRAG_NEEDED ;
 int ICMP_INC_STATS_BH (struct net*,int ) ;
 int ICMP_MIB_INERRORS ;



 int IP_PMTUDISC_DONT ;
 int const NR_ICMP_UNREACH ;
 scalar_t__ TCP_ESTABLISHED ;
 struct sock* __udp4_lib_lookup (struct net*,int ,int ,int ,int ,int ,struct udp_table*) ;
 struct net* dev_net (TYPE_3__*) ;
 TYPE_2__* icmp_err_convert ;
 TYPE_1__* icmp_hdr (struct sk_buff*) ;
 struct inet_sock* inet_sk (struct sock*) ;
 int ip_icmp_error (struct sock*,struct sk_buff*,int,int ,int ,int *) ;
 int sock_put (struct sock*) ;
 int stub1 (struct sock*) ;

void __udp4_lib_err(struct sk_buff *skb, u32 info, struct udp_table *udptable)
{
 struct inet_sock *inet;
 struct iphdr *iph = (struct iphdr *)skb->data;
 struct udphdr *uh = (struct udphdr *)(skb->data+(iph->ihl<<2));
 const int type = icmp_hdr(skb)->type;
 const int code = icmp_hdr(skb)->code;
 struct sock *sk;
 int harderr;
 int err;
 struct net *net = dev_net(skb->dev);

 sk = __udp4_lib_lookup(net, iph->daddr, uh->dest,
   iph->saddr, uh->source, skb->dev->ifindex, udptable);
 if (sk == ((void*)0)) {
  ICMP_INC_STATS_BH(net, ICMP_MIB_INERRORS);
  return;
 }

 err = 0;
 harderr = 0;
 inet = inet_sk(sk);

 switch (type) {
 default:
 case 128:
  err = EHOSTUNREACH;
  break;
 case 129:
  goto out;
 case 130:
  err = EPROTO;
  harderr = 1;
  break;
 case 131:
  if (code == ICMP_FRAG_NEEDED) {
   if (inet->pmtudisc != IP_PMTUDISC_DONT) {
    err = EMSGSIZE;
    harderr = 1;
    break;
   }
   goto out;
  }
  err = EHOSTUNREACH;
  if (code <= NR_ICMP_UNREACH) {
   harderr = icmp_err_convert[code].fatal;
   err = icmp_err_convert[code].errno;
  }
  break;
 }





 if (!inet->recverr) {
  if (!harderr || sk->sk_state != TCP_ESTABLISHED)
   goto out;
 } else {
  ip_icmp_error(sk, skb, err, uh->dest, info, (u8 *)(uh+1));
 }
 sk->sk_err = err;
 sk->sk_error_report(sk);
out:
 sock_put(sk);
}
