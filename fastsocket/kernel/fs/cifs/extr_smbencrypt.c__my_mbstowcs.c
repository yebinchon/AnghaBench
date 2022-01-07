
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned char __u16 ;


 int SSVAL (unsigned char*,int ,unsigned char) ;

__attribute__((used)) static int
_my_mbstowcs(__u16 *dst, const unsigned char *src, int len)
{
 int i;
 __u16 val;

 for (i = 0; i < len; i++) {
  val = *src;
  SSVAL(dst, 0, val);
  dst++;
  src++;
  if (val == 0)
   break;
 }
 return i;
}
