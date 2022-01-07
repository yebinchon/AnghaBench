
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int outb (unsigned char,scalar_t__) ;
 scalar_t__ pas_translate_code ;

void pas_write(unsigned char data, int ioaddr)
{
 outb((data), ioaddr + pas_translate_code);
}
