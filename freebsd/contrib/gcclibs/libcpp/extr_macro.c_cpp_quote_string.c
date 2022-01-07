
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char uchar ;



uchar *
cpp_quote_string (uchar *dest, const uchar *src, unsigned int len)
{
  while (len--)
    {
      uchar c = *src++;

      if (c == '\\' || c == '"')
 {
   *dest++ = '\\';
   *dest++ = c;
 }
      else
   *dest++ = c;
    }

  return dest;
}
