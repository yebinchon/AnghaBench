
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int emergency_restart () ;
 int o2hb_stop_all_regions () ;
 int printk (char*) ;

__attribute__((used)) static void o2quo_fence_self(void)
{


 o2hb_stop_all_regions();

 printk("ocfs2 is very sorry to be fencing this system by restarting\n");
 emergency_restart();
}
