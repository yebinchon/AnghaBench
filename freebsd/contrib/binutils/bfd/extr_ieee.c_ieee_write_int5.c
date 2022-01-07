
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bfd_vma ;
typedef int bfd_byte ;


 scalar_t__ ieee_number_repeat_4_enum ;

__attribute__((used)) static void
ieee_write_int5 (bfd_byte *buffer, bfd_vma value)
{
  buffer[0] = (bfd_byte) ieee_number_repeat_4_enum;
  buffer[1] = (value >> 24) & 0xff;
  buffer[2] = (value >> 16) & 0xff;
  buffer[3] = (value >> 8) & 0xff;
  buffer[4] = (value >> 0) & 0xff;
}
