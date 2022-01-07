
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip_mc_list {scalar_t__ multiaddr; scalar_t__ users; struct ip_mc_list* next; } ;
struct in_device {int dead; int mc_list_lock; int mc_count; struct ip_mc_list* mc_list; } ;
typedef scalar_t__ __be32 ;


 int ASSERT_RTNL () ;
 int igmp_group_dropped (struct ip_mc_list*) ;
 int ip_ma_put (struct ip_mc_list*) ;
 int ip_mc_clear_src (struct ip_mc_list*) ;
 int ip_rt_multicast_event (struct in_device*) ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

void ip_mc_dec_group(struct in_device *in_dev, __be32 addr)
{
 struct ip_mc_list *i, **ip;

 ASSERT_RTNL();

 for (ip=&in_dev->mc_list; (i=*ip)!=((void*)0); ip=&i->next) {
  if (i->multiaddr == addr) {
   if (--i->users == 0) {
    write_lock_bh(&in_dev->mc_list_lock);
    *ip = i->next;
    in_dev->mc_count--;
    write_unlock_bh(&in_dev->mc_list_lock);
    igmp_group_dropped(i);
    ip_mc_clear_src(i);

    if (!in_dev->dead)
     ip_rt_multicast_event(in_dev);

    ip_ma_put(i);
    return;
   }
   break;
  }
 }
}
