
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int common_header_type ;
typedef int bfd_vma ;
typedef int bfd_boolean ;


 int FALSE ;
 int TRUE ;
 int next_byte (int *) ;
 int this_byte (int *) ;
 int this_byte_and_next (int *) ;

__attribute__((used)) static bfd_boolean
parse_int (common_header_type *ieee, bfd_vma *value_ptr)
{
  int value = this_byte (ieee);
  int result;

  if (value >= 0 && value <= 127)
    {
      *value_ptr = value;
      next_byte (ieee);
      return TRUE;
    }
  else if (value >= 0x80 && value <= 0x88)
    {
      unsigned int count = value & 0xf;

      result = 0;
      next_byte (ieee);
      while (count)
 {
   result = (result << 8) | this_byte_and_next (ieee);
   count--;
 }
      *value_ptr = result;
      return TRUE;
    }
  return FALSE;
}
