
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef void* u_int ;
typedef int time_t ;
struct timeval {scalar_t__ tv_sec; scalar_t__ tv_usec; } ;
struct TYPE_3__ {void* nt_useconds; void* nt_seconds; } ;
typedef TYPE_1__ nfstime ;


 int XLOG_ERROR ;
 scalar_t__ gettimeofday (struct timeval*,int *) ;
 int plog (int ,char*) ;

time_t
clocktime(nfstime *nt)
{
  static struct timeval now;

  if (gettimeofday(&now, ((void*)0)) < 0) {
    plog(XLOG_ERROR, "clocktime: gettimeofday: %m");

    now.tv_sec++;
  }

  if (nt) {
    nt->nt_seconds = (u_int) now.tv_sec;
    nt->nt_useconds = (u_int) now.tv_usec;
  }
  return (time_t) now.tv_sec;
}
