
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netns_frags {scalar_t__ low_thresh; } ;
struct inet_frags {int dummy; } ;


 int inet_frag_evictor (struct netns_frags*,struct inet_frags*) ;
 int local_bh_disable () ;
 int local_bh_enable () ;

void inet_frags_exit_net(struct netns_frags *nf, struct inet_frags *f)
{
 nf->low_thresh = 0;

 local_bh_disable();
 inet_frag_evictor(nf, f);
 local_bh_enable();
}
