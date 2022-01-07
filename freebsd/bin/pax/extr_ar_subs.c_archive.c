
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ (* options ) () ;} ;
typedef int ARCHD ;


 TYPE_1__* frmt ;
 scalar_t__ ftime_start () ;
 scalar_t__ stub1 () ;
 scalar_t__ uflag ;
 int wr_archive (int *,int ) ;
 scalar_t__ wr_start () ;

void
archive(void)
{
 ARCHD archd;






 if ((uflag && (ftime_start() < 0)) || (wr_start() < 0))
  return;
 if ((*frmt->options)() < 0)
  return;

 wr_archive(&archd, 0);
}
