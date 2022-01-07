
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bfd_uint64_t ;
typedef int bfd_byte ;
typedef int bfd ;


 int bfd_get_64 (int *,int *) ;

__attribute__((used)) static bfd_uint64_t
read_8_bytes (bfd *abfd, bfd_byte *buf)
{
  return bfd_get_64 (abfd, buf);
}
