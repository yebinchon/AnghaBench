
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct net_bridge {int* group_addr; int lock; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 int CAP_NET_ADMIN ;
 size_t EINVAL ;
 size_t EPERM ;
 int capable (int ) ;
 int is_link_local_ether_addr (int*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int sscanf (char const*,char*,int*,int*,int*,int*,int*,int*) ;
 struct net_bridge* to_bridge (struct device*) ;

__attribute__((used)) static ssize_t store_group_addr(struct device *d,
    struct device_attribute *attr,
    const char *buf, size_t len)
{
 struct net_bridge *br = to_bridge(d);
 u8 new_addr[6];
 int i;

 if (!capable(CAP_NET_ADMIN))
  return -EPERM;

 if (sscanf(buf, "%hhx:%hhx:%hhx:%hhx:%hhx:%hhx",
     &new_addr[0], &new_addr[1], &new_addr[2],
     &new_addr[3], &new_addr[4], &new_addr[5]) != 6)
  return -EINVAL;

 if (!is_link_local_ether_addr(new_addr))
  return -EINVAL;

 if (new_addr[5] == 1
     || new_addr[5] == 2
     || new_addr[5] == 3)
  return -EINVAL;

 spin_lock_bh(&br->lock);
 for (i = 0; i < 6; i++)
  br->group_addr[i] = new_addr[i];
 spin_unlock_bh(&br->lock);
 return len;
}
