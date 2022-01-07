
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TICKS_TO_SECS (int ) ;
 int hpwdt_timer_reg ;
 int ioread16 (int ) ;

__attribute__((used)) static int hpwdt_time_left(void)
{
 return TICKS_TO_SECS(ioread16(hpwdt_timer_reg));
}
