
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct posix_clock {int rwsem; } ;


 int up_read (int *) ;

__attribute__((used)) static void put_posix_clock(struct posix_clock *clk)
{
 up_read(&clk->rwsem);
}
