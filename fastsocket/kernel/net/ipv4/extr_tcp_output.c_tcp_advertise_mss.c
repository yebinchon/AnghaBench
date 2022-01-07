
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcp_sock {int advmss; } ;
struct sock {int dummy; } ;
struct dst_entry {int dummy; } ;
typedef int __u16 ;


 int RTAX_ADVMSS ;
 struct dst_entry* __sk_dst_get (struct sock*) ;
 int dst_metric (struct dst_entry*,int ) ;
 struct tcp_sock* tcp_sk (struct sock*) ;

__attribute__((used)) static __u16 tcp_advertise_mss(struct sock *sk)
{
 struct tcp_sock *tp = tcp_sk(sk);
 struct dst_entry *dst = __sk_dst_get(sk);
 int mss = tp->advmss;

 if (dst && dst_metric(dst, RTAX_ADVMSS) < mss) {
  mss = dst_metric(dst, RTAX_ADVMSS);
  tp->advmss = mss;
 }

 return (__u16)mss;
}
