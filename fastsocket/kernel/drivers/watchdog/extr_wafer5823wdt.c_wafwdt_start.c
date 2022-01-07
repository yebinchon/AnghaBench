
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int inb_p (int ) ;
 int outb_p (int ,int ) ;
 int timeout ;
 int wdt_start ;

__attribute__((used)) static void wafwdt_start(void)
{

 outb_p(timeout, wdt_start);
 inb_p(wdt_start);
}
