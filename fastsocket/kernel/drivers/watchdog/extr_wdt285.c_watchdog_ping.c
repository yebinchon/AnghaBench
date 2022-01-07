
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * CSR_TIMER4_LOAD ;
 int reload ;

__attribute__((used)) static void watchdog_ping(void)
{
 *CSR_TIMER4_LOAD = reload;
}
