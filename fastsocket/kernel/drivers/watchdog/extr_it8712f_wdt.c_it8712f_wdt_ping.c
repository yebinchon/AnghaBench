
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int address ;
 int inb (int ) ;

__attribute__((used)) static inline void it8712f_wdt_ping(void)
{
 inb(address);
}
