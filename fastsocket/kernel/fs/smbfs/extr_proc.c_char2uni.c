
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned char wchar_t ;


 int EINVAL ;

__attribute__((used)) static int char2uni(const unsigned char *rawstring, int boundlen, wchar_t *uni)
{
 if (boundlen < 2)
  return -EINVAL;
 *uni = (rawstring[1] << 8) | rawstring[0];
 return 2;
}
