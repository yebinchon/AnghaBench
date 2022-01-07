
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bfd_vma ;
typedef int bfd_byte ;
typedef int bfd_boolean ;
typedef int bfd ;


 int FALSE ;
 int TRUE ;
 scalar_t__ ieee_number_repeat_start_enum ;
 int ieee_write_byte (int *,int ) ;

__attribute__((used)) static bfd_boolean
ieee_write_int (bfd *abfd, bfd_vma value)
{
  if (value <= 127)
    {
      if (! ieee_write_byte (abfd, (bfd_byte) value))
 return FALSE;
    }
  else
    {
      unsigned int length;



      if (value & 0xff000000)
 length = 4;
      else if (value & 0x00ff0000)
 length = 3;
      else if (value & 0x0000ff00)
 length = 2;
      else
 length = 1;

      if (! ieee_write_byte (abfd,
        (bfd_byte) ((int) ieee_number_repeat_start_enum
      + length)))
 return FALSE;
      switch (length)
 {
 case 4:
   if (! ieee_write_byte (abfd, (bfd_byte) (value >> 24)))
     return FALSE;

 case 3:
   if (! ieee_write_byte (abfd, (bfd_byte) (value >> 16)))
     return FALSE;

 case 2:
   if (! ieee_write_byte (abfd, (bfd_byte) (value >> 8)))
     return FALSE;

 case 1:
   if (! ieee_write_byte (abfd, (bfd_byte) (value)))
     return FALSE;
 }
    }

  return TRUE;
}
