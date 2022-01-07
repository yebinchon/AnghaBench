
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip_mc_list {struct ip_mc_list* next; } ;
struct in_device {int mc_list_lock; int mc_count; struct ip_mc_list* mc_list; } ;


 int ASSERT_RTNL () ;
 int ip_ma_put (struct ip_mc_list*) ;
 int ip_mc_clear_src (struct ip_mc_list*) ;
 int ip_mc_down (struct in_device*) ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

void ip_mc_destroy_dev(struct in_device *in_dev)
{
 struct ip_mc_list *i;

 ASSERT_RTNL();


 ip_mc_down(in_dev);

 write_lock_bh(&in_dev->mc_list_lock);
 while ((i = in_dev->mc_list) != ((void*)0)) {
  in_dev->mc_list = i->next;
  in_dev->mc_count--;
  write_unlock_bh(&in_dev->mc_list_lock);


  ip_mc_clear_src(i);
  ip_ma_put(i);

  write_lock_bh(&in_dev->mc_list_lock);
 }
 write_unlock_bh(&in_dev->mc_list_lock);
}
