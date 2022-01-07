
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct atm_vcc {int dummy; } ;
struct TYPE_2__ {int sk_receive_queue; } ;


 int THIS_MODULE ;
 int * atmarpd ;
 int module_put (int ) ;
 int pr_debug (char*) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;
 TYPE_1__* sk_atm (struct atm_vcc*) ;
 int skb_queue_purge (int *) ;

__attribute__((used)) static void atmarpd_close(struct atm_vcc *vcc)
{
 pr_debug("atmarpd_close\n");

 rtnl_lock();
 atmarpd = ((void*)0);
 skb_queue_purge(&sk_atm(vcc)->sk_receive_queue);
 rtnl_unlock();

 pr_debug("(done)\n");
 module_put(THIS_MODULE);
}
