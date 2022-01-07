
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int dummy; } ;
struct TYPE_2__ {int t1timer; } ;


 int del_timer (int *) ;
 TYPE_1__* nr_sk (struct sock*) ;

void nr_stop_t1timer(struct sock *sk)
{
 del_timer(&nr_sk(sk)->t1timer);
}
