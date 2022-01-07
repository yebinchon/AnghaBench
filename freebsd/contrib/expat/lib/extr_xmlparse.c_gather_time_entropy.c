
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct timeval {unsigned long tv_usec; } ;
struct TYPE_3__ {unsigned long dwHighDateTime; unsigned long dwLowDateTime; } ;
typedef TYPE_1__ FILETIME ;


 int GetSystemTimeAsFileTime (TYPE_1__*) ;
 int assert (int) ;
 int gettimeofday (struct timeval*,int *) ;

__attribute__((used)) static unsigned long
gather_time_entropy(void)
{





  struct timeval tv;
  int gettimeofday_res;

  gettimeofday_res = gettimeofday(&tv, ((void*)0));




  assert (gettimeofday_res == 0);



  return tv.tv_usec;

}
