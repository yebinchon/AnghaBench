
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct nr_sock {scalar_t__ t1; int t1timer; } ;


 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 struct nr_sock* nr_sk (struct sock*) ;

void nr_start_t1timer(struct sock *sk)
{
 struct nr_sock *nr = nr_sk(sk);

 mod_timer(&nr->t1timer, jiffies + nr->t1);
}
