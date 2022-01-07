
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int outb_p (int ,int ) ;
 int timeout ;
 int wdt_start ;

__attribute__((used)) static void advwdt_ping(void)
{

 outb_p(timeout, wdt_start);
}
