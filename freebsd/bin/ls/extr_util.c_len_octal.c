
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int mbstate_t ;
typedef int mbs ;


 scalar_t__ iswprint (int ) ;
 size_t mbrtowc (int *,char const*,int,int *) ;
 int memset (int *,int ,int) ;

size_t
len_octal(const char *s, int len)
{
 mbstate_t mbs;
 wchar_t wc;
 size_t clen, r;

 memset(&mbs, 0, sizeof(mbs));
 r = 0;
 while (len != 0 && (clen = mbrtowc(&wc, s, len, &mbs)) != 0) {
  if (clen == (size_t)-1) {
   r += 4;
   s++;
   len--;
   memset(&mbs, 0, sizeof(mbs));
   continue;
  }
  if (clen == (size_t)-2) {
   r += 4 * len;
   break;
  }
  if (iswprint(wc))
   r++;
  else
   r += 4 * clen;
  s += clen;
 }
 return (r);
}
