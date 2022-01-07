
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned char inb (scalar_t__) ;
 scalar_t__ pas_translate_code ;

unsigned char pas_read(int ioaddr)
{
 return inb(ioaddr + pas_translate_code);
}
