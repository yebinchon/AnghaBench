
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int wdt_ctrl (int ) ;

__attribute__((used)) static int wdt_disable(void)
{
 wdt_ctrl(0);
 return 0;
}
