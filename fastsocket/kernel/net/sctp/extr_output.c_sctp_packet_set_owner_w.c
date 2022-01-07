
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_wmem_alloc; } ;
struct sk_buff {int destructor; struct sock* sk; } ;


 int atomic_inc (int *) ;
 int sctp_packet_release_owner ;
 int skb_orphan (struct sk_buff*) ;

__attribute__((used)) static void sctp_packet_set_owner_w(struct sk_buff *skb, struct sock *sk)
{
 skb_orphan(skb);
 skb->sk = sk;
 skb->destructor = sctp_packet_release_owner;






 atomic_inc(&sk->sk_wmem_alloc);
}
