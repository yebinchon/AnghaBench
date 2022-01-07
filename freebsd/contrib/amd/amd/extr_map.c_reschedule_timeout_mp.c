
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ timeout (int ,int ,int *) ;
 int timeout_mp ;
 scalar_t__ timeout_mp_id ;
 int untimeout (scalar_t__) ;

void
reschedule_timeout_mp(void)
{
  if (timeout_mp_id)
    untimeout(timeout_mp_id);
  timeout_mp_id = timeout(0, timeout_mp, ((void*)0));
}
