
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct nr_sock {int condition; scalar_t__ n2count; } ;


 int NR_CONNREQ ;
 struct nr_sock* nr_sk (struct sock*) ;
 int nr_start_t1timer (struct sock*) ;
 int nr_stop_idletimer (struct sock*) ;
 int nr_stop_t2timer (struct sock*) ;
 int nr_stop_t4timer (struct sock*) ;
 int nr_write_internal (struct sock*,int ) ;

void nr_establish_data_link(struct sock *sk)
{
 struct nr_sock *nr = nr_sk(sk);

 nr->condition = 0x00;
 nr->n2count = 0;

 nr_write_internal(sk, NR_CONNREQ);

 nr_stop_t2timer(sk);
 nr_stop_t4timer(sk);
 nr_stop_idletimer(sk);
 nr_start_t1timer(sk);
}
