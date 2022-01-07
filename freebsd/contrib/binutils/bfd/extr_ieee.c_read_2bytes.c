
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int common_header_type ;


 unsigned char this_byte_and_next (int *) ;

__attribute__((used)) static unsigned short
read_2bytes (common_header_type *ieee)
{
  unsigned char c1 = this_byte_and_next (ieee);
  unsigned char c2 = this_byte_and_next (ieee);

  return (c1 << 8) | c2;
}
