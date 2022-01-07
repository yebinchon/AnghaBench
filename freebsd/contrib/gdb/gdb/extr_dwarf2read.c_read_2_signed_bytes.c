
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bfd_byte ;
typedef int bfd ;


 int bfd_get_signed_16 (int *,int *) ;

__attribute__((used)) static int
read_2_signed_bytes (bfd *abfd, char *buf)
{
  return bfd_get_signed_16 (abfd, (bfd_byte *) buf);
}
