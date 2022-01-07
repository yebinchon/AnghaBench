
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int hpwdt_timer_con ;
 unsigned long ioread8 (int ) ;
 int iowrite8 (unsigned long,int ) ;

__attribute__((used)) static void hpwdt_stop(void)
{
 unsigned long data;

 data = ioread8(hpwdt_timer_con);
 data &= 0xFE;
 iowrite8(data, hpwdt_timer_con);
}
