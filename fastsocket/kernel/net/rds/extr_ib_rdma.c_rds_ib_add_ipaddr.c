
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rds_ib_ipaddr {int list; int ipaddr; } ;
struct rds_ib_device {int spinlock; int ipaddr_list; } ;
typedef int __be32 ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct rds_ib_ipaddr* kmalloc (int,int ) ;
 int list_add_tail_rcu (int *,int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int rds_ib_add_ipaddr(struct rds_ib_device *rds_ibdev, __be32 ipaddr)
{
 struct rds_ib_ipaddr *i_ipaddr;

 i_ipaddr = kmalloc(sizeof *i_ipaddr, GFP_KERNEL);
 if (!i_ipaddr)
  return -ENOMEM;

 i_ipaddr->ipaddr = ipaddr;

 spin_lock_irq(&rds_ibdev->spinlock);
 list_add_tail_rcu(&i_ipaddr->list, &rds_ibdev->ipaddr_list);
 spin_unlock_irq(&rds_ibdev->spinlock);

 return 0;
}
