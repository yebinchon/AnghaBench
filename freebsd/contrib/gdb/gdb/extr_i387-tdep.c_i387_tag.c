
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
i387_tag (const unsigned char *raw)
{
  int integer;
  unsigned int exponent;
  unsigned long fraction[2];

  integer = raw[7] & 0x80;
  exponent = (((raw[9] & 0x7f) << 8) | raw[8]);
  fraction[0] = ((raw[3] << 24) | (raw[2] << 16) | (raw[1] << 8) | raw[0]);
  fraction[1] = (((raw[7] & 0x7f) << 24) | (raw[6] << 16)
   | (raw[5] << 8) | raw[4]);

  if (exponent == 0x7fff)
    {

      return (2);
    }
  else if (exponent == 0x0000)
    {
      if (fraction[0] == 0x0000 && fraction[1] == 0x0000 && !integer)
 {

   return (1);
 }
      else
 {

   return (2);
 }
    }
  else
    {
      if (integer)
 {

   return (0);
 }
      else
 {

   return (2);
 }
    }
}
