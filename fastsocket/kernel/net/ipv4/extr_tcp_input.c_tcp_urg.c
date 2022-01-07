
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
struct tcphdr {int doff; scalar_t__ syn; int seq; scalar_t__ urg; } ;
struct tcp_sock {scalar_t__ urg_data; scalar_t__ urg_seq; } ;
struct sock {int (* sk_data_ready ) (struct sock*,int ) ;} ;
struct sk_buff {scalar_t__ len; } ;


 int BUG () ;
 int SOCK_DEAD ;
 scalar_t__ TCP_URG_NOTYET ;
 int TCP_URG_VALID ;
 scalar_t__ ntohl (int ) ;
 scalar_t__ skb_copy_bits (struct sk_buff*,scalar_t__,int*,int) ;
 int sock_flag (struct sock*,int ) ;
 int stub1 (struct sock*,int ) ;
 int tcp_check_urg (struct sock*,struct tcphdr*) ;
 struct tcp_sock* tcp_sk (struct sock*) ;

__attribute__((used)) static void tcp_urg(struct sock *sk, struct sk_buff *skb, struct tcphdr *th)
{
 struct tcp_sock *tp = tcp_sk(sk);


 if (th->urg)
  tcp_check_urg(sk, th);


 if (tp->urg_data == TCP_URG_NOTYET) {
  u32 ptr = tp->urg_seq - ntohl(th->seq) + (th->doff * 4) -
     th->syn;


  if (ptr < skb->len) {
   u8 tmp;
   if (skb_copy_bits(skb, ptr, &tmp, 1))
    BUG();
   tp->urg_data = TCP_URG_VALID | tmp;
   if (!sock_flag(sk, SOCK_DEAD))
    sk->sk_data_ready(sk, 0);
  }
 }
}
