
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uwb_dev_addr {int dummy; } ;
struct TYPE_2__ {int mutex; struct uwb_dev_addr dev_addr; } ;
struct uwb_rc {TYPE_1__ uwb_dev; } ;


 int EINVAL ;
 int UWB_ADDR_DEV ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int uwb_rc_addr_set (struct uwb_rc*,struct uwb_dev_addr const*,int ) ;

int uwb_rc_dev_addr_set(struct uwb_rc *rc,
   const struct uwb_dev_addr *addr)
{
 int result = -EINVAL;
 mutex_lock(&rc->uwb_dev.mutex);
 result = uwb_rc_addr_set(rc, addr, UWB_ADDR_DEV);
 rc->uwb_dev.dev_addr = *addr;
 mutex_unlock(&rc->uwb_dev.mutex);
 return result;
}
