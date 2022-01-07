
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int valueT ;


 int number_to_chars_bigendian (char*,int ,int) ;
 int number_to_chars_littleendian (char*,int ,int) ;
 scalar_t__ target_big_endian ;

void
md_number_to_chars (char *buf, valueT val, int n)
{
  if (target_big_endian)
    number_to_chars_bigendian (buf, val, n);
  else
    number_to_chars_littleendian (buf, val, n);
}
