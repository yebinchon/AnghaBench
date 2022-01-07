
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sock {scalar_t__ sk_type; } ;
struct TYPE_2__ {scalar_t__ sec_level; } ;


 scalar_t__ BT_SECURITY_HIGH ;
 scalar_t__ BT_SECURITY_MEDIUM ;
 int ECONNREFUSED ;
 int HZ ;
 scalar_t__ SOCK_SEQPACKET ;
 int __l2cap_sock_close (struct sock*,int ) ;
 TYPE_1__* l2cap_pi (struct sock*) ;
 int l2cap_sock_clear_timer (struct sock*) ;
 int l2cap_sock_set_timer (struct sock*,int) ;

__attribute__((used)) static inline void l2cap_check_encryption(struct sock *sk, u8 encrypt)
{
 if (sk->sk_type != SOCK_SEQPACKET)
  return;

 if (encrypt == 0x00) {
  if (l2cap_pi(sk)->sec_level == BT_SECURITY_MEDIUM) {
   l2cap_sock_clear_timer(sk);
   l2cap_sock_set_timer(sk, HZ * 5);
  } else if (l2cap_pi(sk)->sec_level == BT_SECURITY_HIGH)
   __l2cap_sock_close(sk, ECONNREFUSED);
 } else {
  if (l2cap_pi(sk)->sec_level == BT_SECURITY_MEDIUM)
   l2cap_sock_clear_timer(sk);
 }
}
