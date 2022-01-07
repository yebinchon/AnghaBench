
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct posix_clock_desc {int fp; int clk; } ;


 int fput (int ) ;
 int put_posix_clock (int ) ;

__attribute__((used)) static void put_clock_desc(struct posix_clock_desc *cd)
{
 put_posix_clock(cd->clk);
 fput(cd->fp);
}
