
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int hpwdt_timer_reg ;
 int iowrite16 (int ,int ) ;
 int reload ;

__attribute__((used)) static void hpwdt_ping(void)
{
 iowrite16(reload, hpwdt_timer_reg);
}
