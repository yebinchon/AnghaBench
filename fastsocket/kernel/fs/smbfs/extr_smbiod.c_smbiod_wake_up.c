
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SMBIOD_DATA_READY ;
 scalar_t__ SMBIOD_DEAD ;
 int set_bit (int ,int *) ;
 int smbiod_flags ;
 scalar_t__ smbiod_state ;
 int smbiod_wait ;
 int wake_up_interruptible (int *) ;

void smbiod_wake_up(void)
{
 if (smbiod_state == SMBIOD_DEAD)
  return;
 set_bit(SMBIOD_DATA_READY, &smbiod_flags);
 wake_up_interruptible(&smbiod_wait);
}
