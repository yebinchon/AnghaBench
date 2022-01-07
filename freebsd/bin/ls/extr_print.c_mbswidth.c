
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;


 int MB_LEN_MAX ;
 size_t mbrtowc (int *,char const*,int ,int *) ;
 size_t wcwidth (int ) ;

__attribute__((used)) static size_t
mbswidth(const char *month)
{
 wchar_t wc;
 size_t width, donelen, clen, w;

 width = donelen = 0;
 while ((clen = mbrtowc(&wc, month + donelen, MB_LEN_MAX, ((void*)0))) != 0) {
  if (clen == (size_t)-1 || clen == (size_t)-2)
   return (-1);
  donelen += clen;
  if ((w = wcwidth(wc)) == (size_t)-1)
   return (-1);
  width += w;
 }

 return (width);
}
