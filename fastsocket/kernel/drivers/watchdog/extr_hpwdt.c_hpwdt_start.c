
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SECS_TO_TICKS (int ) ;
 int hpwdt_timer_con ;
 int hpwdt_timer_reg ;
 int iowrite16 (int ,int ) ;
 int iowrite8 (int,int ) ;
 int reload ;
 int soft_margin ;

__attribute__((used)) static void hpwdt_start(void)
{
 reload = SECS_TO_TICKS(soft_margin);
 iowrite16(reload, hpwdt_timer_reg);
 iowrite8(0x85, hpwdt_timer_con);
}
