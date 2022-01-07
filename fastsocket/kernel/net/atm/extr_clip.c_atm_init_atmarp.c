
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atm_vcc {int * push_oam; int * pop; int * push; int * dev; int flags; } ;


 int ATM_VF_META ;
 int ATM_VF_READY ;
 int CLIP_CHECK_INTERVAL ;
 int EADDRINUSE ;
 int HZ ;
 struct atm_vcc* atmarpd ;
 int atmarpd_dev ;
 int idle_timer ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;
 int set_bit (int ,int *) ;
 int sk_atm (struct atm_vcc*) ;
 int vcc_insert_socket (int ) ;

__attribute__((used)) static int atm_init_atmarp(struct atm_vcc *vcc)
{
 rtnl_lock();
 if (atmarpd) {
  rtnl_unlock();
  return -EADDRINUSE;
 }

 mod_timer(&idle_timer, jiffies+CLIP_CHECK_INTERVAL*HZ);

 atmarpd = vcc;
 set_bit(ATM_VF_META,&vcc->flags);
 set_bit(ATM_VF_READY,&vcc->flags);

 vcc->dev = &atmarpd_dev;
 vcc_insert_socket(sk_atm(vcc));
 vcc->push = ((void*)0);
 vcc->pop = ((void*)0);
 vcc->push_oam = ((void*)0);
 rtnl_unlock();
 return 0;
}
