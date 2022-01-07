
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tms {int tms_utime; int tms_stime; } ;
struct TYPE_4__ {int tv_sec; long tv_usec; } ;
struct TYPE_3__ {int tv_sec; long tv_usec; } ;
struct rusage {TYPE_2__ ru_stime; TYPE_1__ ru_utime; } ;


 long CLOCKS_PER_SEC ;
 int GNU_HZ ;
 long const clock () ;
 int getrusage (int ,struct rusage*) ;
 int times (struct tms*) ;

long
get_run_time (void)
{
  const long clocks_per_sec = CLOCKS_PER_SEC;
  if (clocks_per_sec <= 1000000)
    return clock () * (1000000 / clocks_per_sec);
  else
    return clock () / clocks_per_sec;


}
