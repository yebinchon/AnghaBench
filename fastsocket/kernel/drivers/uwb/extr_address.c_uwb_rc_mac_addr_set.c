
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mutex; } ;
struct uwb_rc {TYPE_1__ uwb_dev; } ;
struct uwb_mac_addr {int dummy; } ;


 int EINVAL ;
 int UWB_ADDR_MAC ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int uwb_rc_addr_set (struct uwb_rc*,struct uwb_mac_addr const*,int ) ;

int uwb_rc_mac_addr_set(struct uwb_rc *rc,
   const struct uwb_mac_addr *addr)
{
 int result = -EINVAL;
 mutex_lock(&rc->uwb_dev.mutex);
 result = uwb_rc_addr_set(rc, addr, UWB_ADDR_MAC);
 mutex_unlock(&rc->uwb_dev.mutex);
 return result;
}
