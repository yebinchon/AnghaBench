
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;


 scalar_t__ __tcp_checksum_complete_user (struct sock*,struct sk_buff*) ;
 int skb_csum_unnecessary (struct sk_buff*) ;

__attribute__((used)) static inline int tcp_checksum_complete_user(struct sock *sk,
          struct sk_buff *skb)
{
 return !skb_csum_unnecessary(skb) &&
        __tcp_checksum_complete_user(sk, skb);
}
