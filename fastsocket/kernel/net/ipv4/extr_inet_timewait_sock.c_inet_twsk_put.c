
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inet_timewait_sock {int tw_refcnt; } ;


 scalar_t__ atomic_dec_and_test (int *) ;
 int inet_twsk_free (struct inet_timewait_sock*) ;

void inet_twsk_put(struct inet_timewait_sock *tw)
{
 if (atomic_dec_and_test(&tw->tw_refcnt))
  inet_twsk_free(tw);
}
