
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int WDIOF_CARDRESET ;
 int WDT_CONTROL ;
 int superio_inb (int ) ;

__attribute__((used)) static int it8712f_wdt_get_status(void)
{
 if (superio_inb(WDT_CONTROL) & 0x01)
  return WDIOF_CARDRESET;
 else
  return 0;
}
