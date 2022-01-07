
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;


 int RFCOMM_SCHED_WAKEUP ;
 int rfcomm_event ;
 int rfcomm_thread ;
 int set_bit (int ,int *) ;
 int wake_up_process (int ) ;

__attribute__((used)) static inline void rfcomm_schedule(uint event)
{
 if (!rfcomm_thread)
  return;

 set_bit(RFCOMM_SCHED_WAKEUP, &rfcomm_event);
 wake_up_process(rfcomm_thread);
}
