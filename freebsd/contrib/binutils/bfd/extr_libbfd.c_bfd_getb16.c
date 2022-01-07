
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const bfd_vma ;
typedef int bfd_byte ;



bfd_vma
bfd_getb16 (const void *p)
{
  const bfd_byte *addr = p;
  return (addr[0] << 8) | addr[1];
}
