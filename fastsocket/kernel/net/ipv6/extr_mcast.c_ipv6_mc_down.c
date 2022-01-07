
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inet6_dev {int lock; struct ifmcaddr6* mc_list; int mc_gq_timer; scalar_t__ mc_gq_running; int mc_ifc_timer; scalar_t__ mc_ifc_count; } ;
struct ifmcaddr6 {struct ifmcaddr6* next; } ;


 int __in6_dev_put (struct inet6_dev*) ;
 scalar_t__ del_timer (int *) ;
 int igmp6_group_dropped (struct ifmcaddr6*) ;
 int mld_clear_delrec (struct inet6_dev*) ;
 int read_lock_bh (int *) ;
 int read_unlock_bh (int *) ;

void ipv6_mc_down(struct inet6_dev *idev)
{
 struct ifmcaddr6 *i;



 read_lock_bh(&idev->lock);
 idev->mc_ifc_count = 0;
 if (del_timer(&idev->mc_ifc_timer))
  __in6_dev_put(idev);
 idev->mc_gq_running = 0;
 if (del_timer(&idev->mc_gq_timer))
  __in6_dev_put(idev);

 for (i = idev->mc_list; i; i=i->next)
  igmp6_group_dropped(i);
 read_unlock_bh(&idev->lock);

 mld_clear_delrec(idev);
}
