
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bfd_byte ;
typedef int bfd ;
typedef int ULONGEST ;
typedef int LONGEST ;


 int bfd_get_32 (int *,int *) ;
 int bfd_get_64 (int *,int *) ;

__attribute__((used)) static ULONGEST
read_initial_length (bfd *abfd, char *buf, unsigned int *bytes_read_ptr)
{
  LONGEST result;

  result = bfd_get_32 (abfd, (bfd_byte *) buf);
  if (result == 0xffffffff)
    {
      result = bfd_get_64 (abfd, (bfd_byte *) buf + 4);
      *bytes_read_ptr = 12;
    }
  else
    *bytes_read_ptr = 4;

  return result;
}
