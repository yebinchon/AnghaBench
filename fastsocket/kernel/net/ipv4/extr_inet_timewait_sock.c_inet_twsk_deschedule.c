
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inet_timewait_sock {int dummy; } ;
struct inet_timewait_death_row {scalar_t__ tw_count; int hashinfo; int death_lock; int tw_timer; } ;


 int __inet_twsk_kill (struct inet_timewait_sock*,int ) ;
 int del_timer (int *) ;
 scalar_t__ inet_twsk_del_dead_node (struct inet_timewait_sock*) ;
 int inet_twsk_put (struct inet_timewait_sock*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void inet_twsk_deschedule(struct inet_timewait_sock *tw,
     struct inet_timewait_death_row *twdr)
{
 spin_lock(&twdr->death_lock);
 if (inet_twsk_del_dead_node(tw)) {
  inet_twsk_put(tw);
  if (--twdr->tw_count == 0)
   del_timer(&twdr->tw_timer);
 }
 spin_unlock(&twdr->death_lock);
 __inet_twsk_kill(tw, twdr->hashinfo);
}
