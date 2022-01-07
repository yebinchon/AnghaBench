
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timespec {int dummy; } ;
struct TYPE_2__ {int total_sleep_time; } ;


 TYPE_1__ timekeeper ;
 struct timespec timespec_add (struct timespec,int ) ;

void monotonic_to_bootbased(struct timespec *ts)
{
 *ts = timespec_add(*ts, timekeeper.total_sleep_time);
}
