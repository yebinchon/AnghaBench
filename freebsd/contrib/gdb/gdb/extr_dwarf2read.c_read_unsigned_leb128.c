
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bfd_byte ;
typedef int bfd ;


 unsigned char bfd_get_8 (int *,int *) ;

__attribute__((used)) static unsigned long
read_unsigned_leb128 (bfd *abfd, char *buf, unsigned int *bytes_read_ptr)
{
  unsigned long result;
  unsigned int num_read;
  int i, shift;
  unsigned char byte;

  result = 0;
  shift = 0;
  num_read = 0;
  i = 0;
  while (1)
    {
      byte = bfd_get_8 (abfd, (bfd_byte *) buf);
      buf++;
      num_read++;
      result |= ((unsigned long)(byte & 127) << shift);
      if ((byte & 128) == 0)
 {
   break;
 }
      shift += 7;
    }
  *bytes_read_ptr = num_read;
  return result;
}
