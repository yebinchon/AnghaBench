
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;


 int unix_state_lock (struct sock*) ;
 int unix_state_lock_nested (struct sock*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void unix_state_double_lock(struct sock *sk1, struct sock *sk2)
{
 if (unlikely(sk1 == sk2) || !sk2) {
  unix_state_lock(sk1);
  return;
 }
 if (sk1 < sk2) {
  unix_state_lock(sk1);
  unix_state_lock_nested(sk2);
 } else {
  unix_state_lock(sk2);
  unix_state_lock_nested(sk1);
 }
}
