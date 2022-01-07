
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_bridge_port {TYPE_1__* br; scalar_t__ dev; } ;
struct kobject {int dummy; } ;
struct brport_attribute {size_t (* store ) (struct net_bridge_port*,unsigned long) ;} ;
struct attribute {int dummy; } ;
typedef size_t ssize_t ;
struct TYPE_2__ {int lock; } ;


 int CAP_NET_ADMIN ;
 size_t EINVAL ;
 size_t EPERM ;
 int capable (int ) ;
 size_t restart_syscall () ;
 int rtnl_trylock () ;
 int rtnl_unlock () ;
 unsigned long simple_strtoul (char const*,char**,int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 size_t stub1 (struct net_bridge_port*,unsigned long) ;
 struct net_bridge_port* to_brport (struct kobject*) ;
 struct brport_attribute* to_brport_attr (struct attribute*) ;

__attribute__((used)) static ssize_t brport_store(struct kobject * kobj,
       struct attribute * attr,
       const char * buf, size_t count)
{
 struct brport_attribute * brport_attr = to_brport_attr(attr);
 struct net_bridge_port * p = to_brport(kobj);
 ssize_t ret = -EINVAL;
 char *endp;
 unsigned long val;

 if (!capable(CAP_NET_ADMIN))
  return -EPERM;

 val = simple_strtoul(buf, &endp, 0);
 if (endp != buf) {
  if (!rtnl_trylock())
   return restart_syscall();
  if (p->dev && p->br && brport_attr->store) {
   spin_lock_bh(&p->br->lock);
   ret = brport_attr->store(p, val);
   spin_unlock_bh(&p->br->lock);
   if (ret == 0)
    ret = count;
  }
  rtnl_unlock();
 }
 return ret;
}
