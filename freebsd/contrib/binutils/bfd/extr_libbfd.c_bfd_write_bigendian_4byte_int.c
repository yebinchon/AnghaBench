
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bfd_vma ;
typedef int bfd_size_type ;
typedef int bfd_byte ;
typedef int bfd_boolean ;
typedef int bfd ;


 int bfd_bwrite (int *,int ,int *) ;
 int bfd_putb32 (int ,int *) ;

bfd_boolean
bfd_write_bigendian_4byte_int (bfd *abfd, unsigned int i)
{
  bfd_byte buffer[4];
  bfd_putb32 ((bfd_vma) i, buffer);
  return bfd_bwrite (buffer, (bfd_size_type) 4, abfd) == 4;
}
