
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mult; int clock; int wall_to_monotonic; int xtime; scalar_t__ ntp_error; } ;


 int ntp_clear () ;
 TYPE_1__ timekeeper ;
 int update_rt_offset () ;
 int update_vsyscall (int *,int *,int ,int ) ;

__attribute__((used)) static void timekeeping_update(bool clearntp)
{
 if (clearntp) {
  timekeeper.ntp_error = 0;
  ntp_clear();
 }
 update_rt_offset();
 update_vsyscall(&timekeeper.xtime, &timekeeper.wall_to_monotonic,
    timekeeper.clock, timekeeper.mult);
}
