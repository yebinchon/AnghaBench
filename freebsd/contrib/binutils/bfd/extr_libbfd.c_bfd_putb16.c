
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bfd_vma ;
typedef int bfd_byte ;



void
bfd_putb16 (bfd_vma data, void *p)
{
  bfd_byte *addr = p;
  addr[0] = (data >> 8) & 0xff;
  addr[1] = data & 0xff;
}
