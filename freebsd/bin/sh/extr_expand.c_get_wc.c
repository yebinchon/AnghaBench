
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ wchar_t ;


 int mbtowc (scalar_t__*,char const*,int) ;

__attribute__((used)) static wchar_t
get_wc(const char **p)
{
 wchar_t c;
 int chrlen;

 chrlen = mbtowc(&c, *p, 4);
 if (chrlen == 0)
  return 0;
 else if (chrlen == -1)
  c = 0;
 else
  *p += chrlen;
 return c;
}
