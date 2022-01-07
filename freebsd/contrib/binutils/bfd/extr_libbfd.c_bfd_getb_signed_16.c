
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bfd_signed_vma ;
typedef int bfd_byte ;


 int COERCE16 (int const) ;

bfd_signed_vma
bfd_getb_signed_16 (const void *p)
{
  const bfd_byte *addr = p;
  return COERCE16 ((addr[0] << 8) | addr[1]);
}
