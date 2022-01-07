
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct regulatory_request {int alpha2; int processed; } ;
struct kobj_uevent_env {int dummy; } ;
struct device {int dummy; } ;


 int add_uevent_var (struct kobj_uevent_env*,char*,int ,int ) ;
 struct regulatory_request* get_last_request () ;
 int memcpy (int *,int ,int) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

int reg_device_uevent(struct device *dev, struct kobj_uevent_env *env)
{
 struct regulatory_request *lr;
 u8 alpha2[2];
 bool add = 0;

 rcu_read_lock();
 lr = get_last_request();
 if (lr && !lr->processed) {
  memcpy(alpha2, lr->alpha2, 2);
  add = 1;
 }
 rcu_read_unlock();

 if (add)
  return add_uevent_var(env, "COUNTRY=%c%c",
          alpha2[0], alpha2[1]);
 return 0;
}
