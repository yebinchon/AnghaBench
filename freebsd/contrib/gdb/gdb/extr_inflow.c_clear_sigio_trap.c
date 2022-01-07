
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int F_SETFL ;
 int SIGIO ;
 int fcntl (int ,int ,int ) ;
 int old_fcntl_flags ;
 int old_sigio ;
 int signal (int ,int ) ;
 int target_activity_fd ;
 scalar_t__ target_activity_function ;

void
clear_sigio_trap (void)
{
  if (target_activity_function)
    {
      signal (SIGIO, old_sigio);
      fcntl (target_activity_fd, F_SETFL, old_fcntl_flags);
    }
}
