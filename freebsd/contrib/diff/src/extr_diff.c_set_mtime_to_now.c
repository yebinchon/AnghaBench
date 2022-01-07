
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timeval {int tv_usec; int tv_sec; } ;
struct TYPE_2__ {int ST_MTIM_NSEC; } ;
struct stat {int st_mtime; TYPE_1__ st_mtim; } ;


 int CLOCK_REALTIME ;
 scalar_t__ clock_gettime (int ,TYPE_1__*) ;
 scalar_t__ gettimeofday (struct timeval*,int ) ;
 int time (int *) ;

__attribute__((used)) static void
set_mtime_to_now (struct stat *st)
{
  time (&st->st_mtime);
}
