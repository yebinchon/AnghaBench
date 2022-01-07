
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
typedef int __sum16 ;


 int __tcp_checksum_complete (struct sk_buff*) ;
 int local_bh_disable () ;
 int local_bh_enable () ;
 scalar_t__ sock_owned_by_user (struct sock*) ;

__attribute__((used)) static __sum16 __tcp_checksum_complete_user(struct sock *sk,
         struct sk_buff *skb)
{
 __sum16 result;

 if (sock_owned_by_user(sk)) {
  local_bh_enable();
  result = __tcp_checksum_complete(skb);
  local_bh_disable();
 } else {
  result = __tcp_checksum_complete(skb);
 }
 return result;
}
