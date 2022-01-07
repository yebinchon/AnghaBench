
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bfd_byte ;
typedef int bfd ;
typedef int ULONGEST ;


 int bfd_get_64 (int *,int *) ;

__attribute__((used)) static ULONGEST
read_8_bytes (bfd *abfd, char *buf)
{
  return bfd_get_64 (abfd, (bfd_byte *) buf);
}
