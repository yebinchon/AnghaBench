
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int outb (int,int) ;
 int* trix_boot ;
 int trix_boot_len ;
 int trix_write (int,int) ;

__attribute__((used)) static void download_boot(int base)
{
 int i = 0, n = trix_boot_len;

 if (trix_boot_len == 0)
  return;

 trix_write(0xf8, 0x00);
 outb((0x01), base + 6);
 outb((0x00), base + 6);





 outb((0x01), base + 6);
 outb((0x1A), 0x390);

 for (i = 0; i < n; i++)
  outb((trix_boot[i]), 0x391);
 for (i = n; i < 10016; i++)
  outb((0x00), 0x391);
 outb((0x00), base + 6);
 outb((0x50), 0x390);

}
