
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;


 int EINVAL ;

__attribute__((used)) static int uni2char(wchar_t uni, unsigned char *out, int boundlen)
{
 if (boundlen < 2)
  return -EINVAL;
 *out++ = uni & 0xff;
 *out++ = uni >> 8;
 return 2;
}
