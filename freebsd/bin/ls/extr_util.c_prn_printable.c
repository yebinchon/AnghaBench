
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int mbstate_t ;
typedef int mbs ;


 int MB_LEN_MAX ;
 int iswprint (int ) ;
 size_t mbrtowc (int *,char const*,int ,int *) ;
 int memset (int *,int ,int) ;
 int putchar (unsigned char) ;
 scalar_t__ wcwidth (int ) ;

int
prn_printable(const char *s)
{
 mbstate_t mbs;
 wchar_t wc;
 int i, n;
 size_t clen;

 memset(&mbs, 0, sizeof(mbs));
 n = 0;
 while ((clen = mbrtowc(&wc, s, MB_LEN_MAX, &mbs)) != 0) {
  if (clen == (size_t)-1) {
   putchar('?');
   s++;
   n++;
   memset(&mbs, 0, sizeof(mbs));
   continue;
  }
  if (clen == (size_t)-2) {
   putchar('?');
   n++;
   break;
  }
  if (!iswprint(wc)) {
   putchar('?');
   s += clen;
   n++;
   continue;
  }
  for (i = 0; i < (int)clen; i++)
   putchar((unsigned char)s[i]);
  s += clen;
  n += wcwidth(wc);
 }
 return (n);
}
