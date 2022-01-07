
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char uchar ;


 scalar_t__ is_space (char const) ;

__attribute__((used)) static size_t
canonicalize_text (uchar *dest, const uchar *src, size_t len, uchar *pquote)
{
  uchar *orig_dest = dest;
  uchar quote = *pquote;

  while (len)
    {
      if (is_space (*src) && !quote)
 {
   do
     src++, len--;
   while (len && is_space (*src));
   *dest++ = ' ';
 }
      else
 {
   if (*src == '\'' || *src == '"')
     {
       if (!quote)
  quote = *src;
       else if (quote == *src)
  quote = 0;
     }
   *dest++ = *src++, len--;
 }
    }

  *pquote = quote;
  return dest - orig_dest;
}
