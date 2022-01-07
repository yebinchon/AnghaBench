
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int mbstate_t ;
typedef int mbs ;


 int MB_LEN_MAX ;
 scalar_t__ iswprint (int ) ;
 size_t mbrtowc (int *,char const*,int ,int *) ;
 int memset (int *,int ,int) ;
 scalar_t__ printf (char*,char const*) ;
 int putchar (unsigned char) ;
 scalar_t__ wcwidth (int ) ;

int
prn_normal(const char *s)
{
 mbstate_t mbs;
 wchar_t wc;
 int i, n;
 size_t clen;

 memset(&mbs, 0, sizeof(mbs));
 n = 0;
 while ((clen = mbrtowc(&wc, s, MB_LEN_MAX, &mbs)) != 0) {
  if (clen == (size_t)-2) {
   n += printf("%s", s);
   break;
  }
  if (clen == (size_t)-1) {
   memset(&mbs, 0, sizeof(mbs));
   putchar((unsigned char)*s);
   s++;
   n++;
   continue;
  }
  for (i = 0; i < (int)clen; i++)
   putchar((unsigned char)s[i]);
  s += clen;
  if (iswprint(wc))
   n += wcwidth(wc);
 }
 return (n);
}
