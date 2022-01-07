
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_bridge {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 int CAP_NET_ADMIN ;
 size_t EINVAL ;
 size_t EPERM ;
 int br_stp_set_enabled (struct net_bridge*,unsigned long) ;
 int capable (int ) ;
 size_t restart_syscall () ;
 int rtnl_trylock () ;
 int rtnl_unlock () ;
 unsigned long simple_strtoul (char const*,char**,int ) ;
 struct net_bridge* to_bridge (struct device*) ;

__attribute__((used)) static ssize_t store_stp_state(struct device *d,
          struct device_attribute *attr, const char *buf,
          size_t len)
{
 struct net_bridge *br = to_bridge(d);
 char *endp;
 unsigned long val;

 if (!capable(CAP_NET_ADMIN))
  return -EPERM;

 val = simple_strtoul(buf, &endp, 0);
 if (endp == buf)
  return -EINVAL;

 if (!rtnl_trylock())
  return restart_syscall();
 br_stp_set_enabled(br, val);
 rtnl_unlock();

 return len;
}
