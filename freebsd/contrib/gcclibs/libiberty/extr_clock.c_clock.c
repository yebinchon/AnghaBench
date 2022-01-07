
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tms {int proc_user_time; int proc_system_time; int child_user_time; int child_system_time; } ;
struct TYPE_4__ {int tv_sec; long tv_usec; } ;
struct TYPE_3__ {int tv_sec; long tv_usec; } ;
struct rusage {TYPE_2__ ru_stime; TYPE_1__ ru_utime; } ;


 int GNU_HZ ;
 int getrusage (int ,struct rusage*) ;
 int times (struct tms*) ;

long
clock (void)
{
  return 0;



}
