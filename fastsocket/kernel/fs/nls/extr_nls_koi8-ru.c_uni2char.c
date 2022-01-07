
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int wchar_t ;
struct TYPE_2__ {int (* uni2char ) (int const,unsigned char*,int) ;} ;


 int ENAMETOOLONG ;
 TYPE_1__* p_nls ;
 int stub1 (int const,unsigned char*,int) ;
 int stub2 (int const,unsigned char*,int) ;

__attribute__((used)) static int uni2char(const wchar_t uni,
      unsigned char *out, int boundlen)
{
 if (boundlen <= 0)
  return -ENAMETOOLONG;

 if ((uni & 0xffaf) == 0x040e || (uni & 0xffce) == 0x254c) {

  if (uni == 0x040e)
   out[0] = 0xbe;
  else if (uni == 0x045e)
   out[0] = 0xae;
  else if (uni == 0x255d || uni == 0x256c)
   return 0;
  else
   return p_nls->uni2char(uni, out, boundlen);
  return 1;
 }
 else

  return p_nls->uni2char(uni, out, boundlen);
}
