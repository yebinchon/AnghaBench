
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int BUG_ON (int) ;
 int clock_fd ;
 int read (int ,int *,int) ;

__attribute__((used)) static u64 get_clock(void)
{
 int ret;
 u64 clk;

 ret = read(clock_fd, &clk, sizeof(u64));
 BUG_ON(ret != sizeof(u64));

 return clk;
}
