
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bfd_byte ;
typedef int bfd ;


 unsigned int bfd_get_16 (int *,int *) ;

__attribute__((used)) static unsigned int
read_2_bytes (bfd *abfd, bfd_byte *buf)
{
  return bfd_get_16 (abfd, buf);
}
