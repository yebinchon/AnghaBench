
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int timeout ;
 int wdt_ctrl (int ) ;

__attribute__((used)) static int wdt_ping(void)
{
 wdt_ctrl(timeout);
 return 0;
}
