
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ dbsz; } ;


 TYPE_1__ in ;
 double secs_elapsed () ;
 scalar_t__ speed ;
 int usleep (double) ;

__attribute__((used)) static void
speed_limit(void)
{
 static double t_prev, t_usleep;
 double t_now, t_io, t_target;

 t_now = secs_elapsed();
 t_io = t_now - t_prev - t_usleep;
 t_target = (double)in.dbsz / (double)speed;
 t_usleep = t_target - t_io;
 if (t_usleep > 0)
  usleep(t_usleep * 1000000);
 else
  t_usleep = 0;
 t_prev = t_now;
}
