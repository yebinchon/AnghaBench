
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct per_user_data {struct per_user_data* name; scalar_t__ ring; } ;
struct inode {int dummy; } ;
struct file {struct per_user_data* private_data; } ;


 int NR_EVENT_CHANNELS ;
 int evtchn_unbind_from_user (struct per_user_data*,int) ;
 int free_page (unsigned long) ;
 int kfree (struct per_user_data*) ;
 struct per_user_data** port_user ;
 int port_user_lock ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int evtchn_release(struct inode *inode, struct file *filp)
{
 int i;
 struct per_user_data *u = filp->private_data;

 spin_lock_irq(&port_user_lock);

 free_page((unsigned long)u->ring);

 for (i = 0; i < NR_EVENT_CHANNELS; i++) {
  if (port_user[i] != u)
   continue;

  evtchn_unbind_from_user(port_user[i], i);
 }

 spin_unlock_irq(&port_user_lock);

 kfree(u->name);
 kfree(u);

 return 0;
}
