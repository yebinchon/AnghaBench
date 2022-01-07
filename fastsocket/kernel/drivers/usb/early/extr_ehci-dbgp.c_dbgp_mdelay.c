
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int outb (int,int) ;

__attribute__((used)) static inline void dbgp_mdelay(int ms)
{
 int i;

 while (ms--) {
  for (i = 0; i < 1000; i++)
   outb(0x1, 0x80);
 }
}
