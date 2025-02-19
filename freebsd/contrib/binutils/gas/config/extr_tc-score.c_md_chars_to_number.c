
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int valueT ;


 scalar_t__ target_big_endian ;

__attribute__((used)) static valueT
md_chars_to_number (char *buf, int n)
{
  valueT result = 0;
  unsigned char *where = (unsigned char *)buf;

  if (target_big_endian)
    {
      while (n--)
        {
          result <<= 8;
          result |= (*where++ & 255);
        }
    }
  else
    {
      while (n--)
        {
          result <<= 8;
          result |= (where[n] & 255);
        }
    }

  return result;
}
