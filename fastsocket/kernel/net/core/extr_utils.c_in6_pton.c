
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int dbuf ;





 int IN6PTON_COLON_MASK ;
 int IN6PTON_DELIM ;
 int IN6PTON_DOT ;
 int IN6PTON_NULL ;
 int IN6PTON_XDIGIT ;
 int in4_pton (char const*,int,scalar_t__*,int,char const**) ;
 int memcpy (scalar_t__*,scalar_t__*,int) ;
 int memset (scalar_t__*,int ,int) ;
 int strlen (char const*) ;
 int xdigit2bin (char const,int) ;

int in6_pton(const char *src, int srclen,
      u8 *dst,
      int delim, const char **end)
{
 const char *s, *tok = ((void*)0);
 u8 *d, *dc = ((void*)0);
 u8 dbuf[16];
 int ret = 0;
 int i;
 int state = 129 | IN6PTON_XDIGIT | IN6PTON_NULL;
 int w = 0;

 memset(dbuf, 0, sizeof(dbuf));

 s = src;
 d = dbuf;
 if (srclen < 0)
  srclen = strlen(src);

 while (1) {
  int c;

  c = xdigit2bin(srclen > 0 ? *s : '\0', delim);
  if (!(c & state))
   goto out;
  if (c & (IN6PTON_DELIM | IN6PTON_COLON_MASK)) {

   if (!(state & IN6PTON_NULL)) {
    *d++ = (w >> 8) & 0xff;
    *d++ = w & 0xff;
   }
   w = 0;
   if (c & IN6PTON_DELIM) {

    break;
   }





   switch (state & IN6PTON_COLON_MASK) {
   case 128:
    dc = d;
    state = IN6PTON_XDIGIT | IN6PTON_DELIM;
    if (dc - dbuf >= sizeof(dbuf))
     state |= IN6PTON_NULL;
    break;
   case 130|129:
    state = IN6PTON_XDIGIT | 128;
    break;
   case 130:
    state = IN6PTON_XDIGIT;
    break;
   case 129:
    state = 128;
    break;
   default:
    state = 0;
   }
   tok = s + 1;
   goto cont;
  }

  if (c & IN6PTON_DOT) {
   ret = in4_pton(tok ? tok : s, srclen + (int)(s - tok), d, delim, &s);
   if (ret > 0) {
    d += 4;
    break;
   }
   goto out;
  }

  w = (w << 4) | (0xff & c);
  state = 130 | IN6PTON_DELIM;
  if (!(w & 0xf000)) {
   state |= IN6PTON_XDIGIT;
  }
  if (!dc && d + 2 < dbuf + sizeof(dbuf)) {
   state |= 129;
   state &= ~IN6PTON_DELIM;
  }
  if (d + 2 >= dbuf + sizeof(dbuf)) {
   state &= ~(130|129);
  }
cont:
  if ((dc && d + 4 < dbuf + sizeof(dbuf)) ||
      d + 4 == dbuf + sizeof(dbuf)) {
   state |= IN6PTON_DOT;
  }
  if (d >= dbuf + sizeof(dbuf)) {
   state &= ~(IN6PTON_XDIGIT|IN6PTON_COLON_MASK);
  }
  s++;
  srclen--;
 }

 i = 15; d--;

 if (dc) {
  while(d >= dc)
   dst[i--] = *d--;
  while(i >= dc - dbuf)
   dst[i--] = 0;
  while(i >= 0)
   dst[i--] = *d--;
 } else
  memcpy(dst, dbuf, sizeof(dbuf));

 ret = 1;
out:
 if (end)
  *end = s;
 return ret;
}
