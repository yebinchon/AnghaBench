
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timespec {int dummy; } ;
struct TYPE_2__ {int offs_boot; struct timespec total_sleep_time; } ;


 TYPE_1__ timekeeper ;
 int timespec_to_ktime (struct timespec) ;

__attribute__((used)) static void update_sleep_time(struct timespec t)
{
 timekeeper.total_sleep_time = t;
 timekeeper.offs_boot = timespec_to_ktime(t);
}
