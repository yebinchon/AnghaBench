
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip_mc_list {int users; size_t sfmode; int* sfcount; int multiaddr; struct ip_mc_list* next; scalar_t__ loaded; scalar_t__ gsquery; scalar_t__ reporter; int unsolicit_count; int timer; scalar_t__ tm_running; int lock; int refcnt; scalar_t__ crcount; int * tomb; int * sources; struct in_device* interface; } ;
struct in_device {int dead; int mc_list_lock; int mc_count; struct ip_mc_list* mc_list; } ;
typedef int __be32 ;


 int ASSERT_RTNL () ;
 int GFP_KERNEL ;
 int IGMP_Unsolicited_Report_Count ;
 size_t MCAST_EXCLUDE ;
 size_t MCAST_INCLUDE ;
 int atomic_set (int *,int) ;
 int igmp_group_added (struct ip_mc_list*) ;
 int igmp_timer_expire ;
 int igmpv3_del_delrec (struct in_device*,int ) ;
 int in_dev_hold (struct in_device*) ;
 int ip_mc_add_src (struct in_device*,int *,size_t,int ,int *,int ) ;
 int ip_rt_multicast_event (struct in_device*) ;
 struct ip_mc_list* kmalloc (int,int ) ;
 int setup_timer (int *,int *,unsigned long) ;
 int spin_lock_init (int *) ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

void ip_mc_inc_group(struct in_device *in_dev, __be32 addr)
{
 struct ip_mc_list *im;

 ASSERT_RTNL();

 for (im=in_dev->mc_list; im; im=im->next) {
  if (im->multiaddr == addr) {
   im->users++;
   ip_mc_add_src(in_dev, &addr, MCAST_EXCLUDE, 0, ((void*)0), 0);
   goto out;
  }
 }

 im = kmalloc(sizeof(*im), GFP_KERNEL);
 if (!im)
  goto out;

 im->users = 1;
 im->interface = in_dev;
 in_dev_hold(in_dev);
 im->multiaddr = addr;

 im->sfmode = MCAST_EXCLUDE;
 im->sfcount[MCAST_INCLUDE] = 0;
 im->sfcount[MCAST_EXCLUDE] = 1;
 im->sources = ((void*)0);
 im->tomb = ((void*)0);
 im->crcount = 0;
 atomic_set(&im->refcnt, 1);
 spin_lock_init(&im->lock);







 im->loaded = 0;
 write_lock_bh(&in_dev->mc_list_lock);
 im->next = in_dev->mc_list;
 in_dev->mc_list = im;
 in_dev->mc_count++;
 write_unlock_bh(&in_dev->mc_list_lock);



 igmp_group_added(im);
 if (!in_dev->dead)
  ip_rt_multicast_event(in_dev);
out:
 return;
}
