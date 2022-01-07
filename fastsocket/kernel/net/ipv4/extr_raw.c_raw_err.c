
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct sock {scalar_t__ sk_state; int sk_err; int (* sk_error_report ) (struct sock*) ;} ;
struct sk_buff {int * data; } ;
struct iphdr {int ihl; } ;
struct inet_sock {scalar_t__ recverr; scalar_t__ hdrincl; int pmtudisc; } ;
struct TYPE_4__ {int errno; int fatal; } ;
struct TYPE_3__ {int type; int code; } ;


 int EHOSTUNREACH ;
 int EMSGSIZE ;
 int EPROTO ;

 int const ICMP_FRAG_NEEDED ;



 int IP_PMTUDISC_DONT ;
 int const NR_ICMP_UNREACH ;
 scalar_t__ TCP_ESTABLISHED ;
 TYPE_2__* icmp_err_convert ;
 TYPE_1__* icmp_hdr (struct sk_buff*) ;
 struct inet_sock* inet_sk (struct sock*) ;
 int ip_icmp_error (struct sock*,struct sk_buff*,int,int ,int ,int *) ;
 int stub1 (struct sock*) ;

__attribute__((used)) static void raw_err(struct sock *sk, struct sk_buff *skb, u32 info)
{
 struct inet_sock *inet = inet_sk(sk);
 const int type = icmp_hdr(skb)->type;
 const int code = icmp_hdr(skb)->code;
 int err = 0;
 int harderr = 0;






 if (!inet->recverr && sk->sk_state != TCP_ESTABLISHED)
  return;

 switch (type) {
 default:
 case 128:
  err = EHOSTUNREACH;
  break;
 case 129:
  return;
 case 130:
  err = EPROTO;
  harderr = 1;
  break;
 case 131:
  err = EHOSTUNREACH;
  if (code > NR_ICMP_UNREACH)
   break;
  err = icmp_err_convert[code].errno;
  harderr = icmp_err_convert[code].fatal;
  if (code == ICMP_FRAG_NEEDED) {
   harderr = inet->pmtudisc != IP_PMTUDISC_DONT;
   err = EMSGSIZE;
  }
 }

 if (inet->recverr) {
  struct iphdr *iph = (struct iphdr *)skb->data;
  u8 *payload = skb->data + (iph->ihl << 2);

  if (inet->hdrincl)
   payload = skb->data;
  ip_icmp_error(sk, skb, err, 0, info, payload);
 }

 if (inet->recverr || harderr) {
  sk->sk_err = err;
  sk->sk_error_report(sk);
 }
}
