
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int outb (int,int ) ;
 int outw (unsigned char,scalar_t__) ;
 int pas_model ;
 scalar_t__ pas_translate_code ;
 int pas_write (unsigned char,int) ;

void
mix_write(unsigned char data, int ioaddr)
{
 if (pas_model == 4)
   {
    outw(data | (data << 8), (ioaddr + pas_translate_code) - 1);
    outb((0x80), 0);
 } else
  pas_write(data, ioaddr);
}
