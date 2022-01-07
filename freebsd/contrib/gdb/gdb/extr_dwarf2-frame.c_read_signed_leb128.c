
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bfd_byte ;
typedef int bfd ;
typedef unsigned char LONGEST ;


 unsigned char bfd_get_8 (int *,int *) ;

__attribute__((used)) static LONGEST
read_signed_leb128 (bfd *abfd, char *buf, unsigned int *bytes_read_ptr)
{
  LONGEST result;
  int shift;
  unsigned int num_read;
  unsigned char byte;

  result = 0;
  shift = 0;
  num_read = 0;

  do
    {
      byte = bfd_get_8 (abfd, (bfd_byte *) buf);
      buf++;
      num_read++;
      result |= ((byte & 0x7f) << shift);
      shift += 7;
    }
  while (byte & 0x80);

  if ((shift < 32) && (byte & 0x40))
    result |= -(1 << shift);

  *bytes_read_ptr = num_read;

  return result;
}
