
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uchar ;
typedef int cppchar_t ;


 int EILSEQ ;
 int EINVAL ;

__attribute__((used)) static inline int
one_utf8_to_cppchar (const uchar **inbufp, size_t *inbytesleftp,
       cppchar_t *cp)
{
  static const uchar masks[6] = { 0x7F, 0x1F, 0x0F, 0x07, 0x02, 0x01 };
  static const uchar patns[6] = { 0x00, 0xC0, 0xE0, 0xF0, 0xF8, 0xFC };

  cppchar_t c;
  const uchar *inbuf = *inbufp;
  size_t nbytes, i;

  if (*inbytesleftp < 1)
    return EINVAL;

  c = *inbuf;
  if (c < 0x80)
    {
      *cp = c;
      *inbytesleftp -= 1;
      *inbufp += 1;
      return 0;
    }



  for (nbytes = 2; nbytes < 7; nbytes++)
    if ((c & ~masks[nbytes-1]) == patns[nbytes-1])
      goto found;
  return EILSEQ;
 found:

  if (*inbytesleftp < nbytes)
    return EINVAL;

  c = (c & masks[nbytes-1]);
  inbuf++;
  for (i = 1; i < nbytes; i++)
    {
      cppchar_t n = *inbuf++;
      if ((n & 0xC0) != 0x80)
 return EILSEQ;
      c = ((c << 6) + (n & 0x3F));
    }


  if (c <= 0x7F && nbytes > 1) return EILSEQ;
  if (c <= 0x7FF && nbytes > 2) return EILSEQ;
  if (c <= 0xFFFF && nbytes > 3) return EILSEQ;
  if (c <= 0x1FFFFF && nbytes > 4) return EILSEQ;
  if (c <= 0x3FFFFFF && nbytes > 5) return EILSEQ;


  if (c > 0x7FFFFFFF || (c >= 0xD800 && c <= 0xDFFF)) return EILSEQ;

  *cp = c;
  *inbufp = inbuf;
  *inbytesleftp -= nbytes;
  return 0;
}
