
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct nr_sock {scalar_t__ idle; int idletimer; } ;


 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 struct nr_sock* nr_sk (struct sock*) ;

void nr_start_idletimer(struct sock *sk)
{
 struct nr_sock *nr = nr_sk(sk);

 if (nr->idle > 0)
  mod_timer(&nr->idletimer, jiffies + nr->idle);
}
