
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct sock {scalar_t__ sk_state; int sk_err; int (* sk_error_report ) (struct sock*) ;} ;
struct sk_buff {TYPE_4__* dev; scalar_t__ data; } ;
struct net {int dummy; } ;
struct iphdr {int ihl; int saddr; int daddr; } ;
struct inet_sock {int recverr; int pmtudisc; } ;
struct TYPE_5__ {int id; int sequence; } ;
struct TYPE_6__ {TYPE_1__ echo; } ;
struct icmphdr {int type; int code; TYPE_2__ un; } ;
struct TYPE_8__ {int ifindex; } ;
struct TYPE_7__ {int fatal; int errno; } ;


 int EHOSTUNREACH ;
 int EMSGSIZE ;
 int EPROTO ;
 int EREMOTEIO ;

 int ICMP_FRAG_NEEDED ;




 int IP_PMTUDISC_DONT ;
 int NR_ICMP_UNREACH ;
 scalar_t__ TCP_ESTABLISHED ;
 struct net* dev_net (TYPE_4__*) ;
 TYPE_3__* icmp_err_convert ;
 struct inet_sock* inet_sk (struct sock*) ;
 int ip_icmp_error (struct sock*,struct sk_buff*,int,int ,int ,int *) ;
 int ntohs (int ) ;
 int ping_supported (int,int) ;
 struct sock* ping_v4_lookup (struct net*,int ,int ,int ,int ) ;
 int pr_debug (char*,...) ;
 int sock_put (struct sock*) ;
 int stub1 (struct sock*) ;

void ping_err(struct sk_buff *skb, u32 info)
{
 struct iphdr *iph = (struct iphdr *)skb->data;
 struct icmphdr *icmph = (struct icmphdr *)(skb->data+(iph->ihl<<2));
 struct inet_sock *inet_sock;
 int type = icmph->type;
 int code = icmph->code;
 struct net *net = dev_net(skb->dev);
 struct sock *sk;
 int harderr;
 int err;



 if (!ping_supported(icmph->type, icmph->code))
  return;

 pr_debug("ping_err(type=%04x,code=%04x,id=%04x,seq=%04x)\n", type,
  code, ntohs(icmph->un.echo.id), ntohs(icmph->un.echo.sequence));

 sk = ping_v4_lookup(net, iph->daddr, iph->saddr,
       ntohs(icmph->un.echo.id), skb->dev->ifindex);
 if (sk == ((void*)0)) {
  pr_debug("no socket, dropping\n");
  return;
 }
 pr_debug("err on socket %p\n", sk);

 err = 0;
 harderr = 0;
 inet_sock = inet_sk(sk);

 switch (type) {
 default:
 case 128:
  err = EHOSTUNREACH;
  break;
 case 129:


  err = EREMOTEIO;
  break;
 case 131:
  err = EPROTO;
  harderr = 1;
  break;
 case 132:
  if (code == ICMP_FRAG_NEEDED) {
   if (inet_sock->pmtudisc != IP_PMTUDISC_DONT) {
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
 case 130:

  err = EREMOTEIO;
  break;
 }





 if (!inet_sock->recverr) {
  if (!harderr || sk->sk_state != TCP_ESTABLISHED)
   goto out;
 } else {
  ip_icmp_error(sk, skb, err, 0 ,
    info, (u8 *)icmph);
 }
 sk->sk_err = err;
 sk->sk_error_report(sk);
out:
 sock_put(sk);
}
