
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int unw_word ;



__attribute__((used)) static unw_word
unw_decode_uleb128 (const unsigned char **dpp)
{
  unsigned shift = 0;
  unw_word byte, result = 0;
  const unsigned char *bp = *dpp;

  while (1)
    {
      byte = *bp++;
      result |= (byte & 0x7f) << shift;

      if ((byte & 0x80) == 0)
 break;

      shift += 7;
    }

  *dpp = bp;

  return result;
}
