
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int model; } ;


 TYPE_1__* devc ;
 int inb (int) ;
 int outb (unsigned char,int) ;
 int udelay (int) ;

__attribute__((used)) static void opl3_command (int io_addr, unsigned int addr, unsigned int val)
{
  int i;






 outb(((unsigned char) (addr & 0xff)), io_addr);

 if (devc->model != 2)
  udelay(10);
 else
  for (i = 0; i < 2; i++)
   inb(io_addr);

 outb(((unsigned char) (val & 0xff)), io_addr + 1);

 if (devc->model != 2)
  udelay(30);
 else
  for (i = 0; i < 2; i++)
   inb(io_addr);
}
