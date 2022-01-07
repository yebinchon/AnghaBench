
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timespec {int tv_nsec; int tv_sec; } ;
struct TYPE_2__ {int offs_real; struct timespec wall_to_monotonic; } ;


 int set_normalized_timespec (struct timespec*,int ,int ) ;
 TYPE_1__ timekeeper ;
 int timespec_to_ktime (struct timespec) ;

__attribute__((used)) static void update_rt_offset(void)
{
 struct timespec tmp, *wtm = &timekeeper.wall_to_monotonic;

 set_normalized_timespec(&tmp, -wtm->tv_sec, -wtm->tv_nsec);
 timekeeper.offs_real = timespec_to_ktime(tmp);
}
