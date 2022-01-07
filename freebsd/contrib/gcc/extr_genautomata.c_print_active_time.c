
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ticker_t ;
typedef int FILE ;


 int active_time (int ) ;
 int fprintf (int *,char*,int,int) ;

__attribute__((used)) static void
print_active_time (FILE *f, ticker_t ticker)
{
  int msecs;

  msecs = active_time (ticker);
  fprintf (f, "%d.%06d", msecs / 1000000, msecs % 1000000);
}
