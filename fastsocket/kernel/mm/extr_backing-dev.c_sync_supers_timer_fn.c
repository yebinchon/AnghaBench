
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bdi_arm_supers_timer () ;
 int sync_supers_tsk ;
 int wake_up_process (int ) ;

__attribute__((used)) static void sync_supers_timer_fn(unsigned long unused)
{
 wake_up_process(sync_supers_tsk);
 bdi_arm_supers_timer();
}
