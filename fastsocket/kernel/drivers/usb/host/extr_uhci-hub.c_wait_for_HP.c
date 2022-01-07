
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int USBPORTSC_CSC ;
 int inw (unsigned long) ;
 int udelay (int) ;

__attribute__((used)) static void wait_for_HP(unsigned long port_addr)
{
 int i;

 for (i = 10; i < 250; i += 10) {
  if (inw(port_addr) & USBPORTSC_CSC)
   return;
  udelay(10);
 }

}
