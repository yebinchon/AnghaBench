
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcphdr {int dummy; } ;
struct sk_buff {int dummy; } ;
struct ipv6hdr {int dummy; } ;
struct ip_vs_protocol {int dummy; } ;
struct ip_vs_conn {scalar_t__ af; int lock; } ;
typedef int _tcph ;


 scalar_t__ AF_INET ;
 int ip_hdrlen (struct sk_buff const*) ;
 int set_tcp_state (struct ip_vs_protocol*,struct ip_vs_conn*,int,struct tcphdr*) ;
 struct tcphdr* skb_header_pointer (struct sk_buff const*,int,int,struct tcphdr*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int
tcp_state_transition(struct ip_vs_conn *cp, int direction,
       const struct sk_buff *skb,
       struct ip_vs_protocol *pp)
{
 struct tcphdr _tcph, *th;




 int ihl = ip_hdrlen(skb);


 th = skb_header_pointer(skb, ihl, sizeof(_tcph), &_tcph);
 if (th == ((void*)0))
  return 0;

 spin_lock(&cp->lock);
 set_tcp_state(pp, cp, direction, th);
 spin_unlock(&cp->lock);

 return 1;
}
