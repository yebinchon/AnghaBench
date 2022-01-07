
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _timeb {double time; scalar_t__ millitm; } ;


 int _ftime (struct _timeb*) ;

double
omp_get_wtime (void)
{
  struct _timeb timebuf;
  _ftime (&timebuf);
  return (timebuf.time + (long)(timebuf.millitm) / 1e3);
}
