
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;



__attribute__((used)) static u16 calc_img_cksum(u16 *start, int length)
{
 u16 tmp = 0;

 while (length--)
  tmp += *start++;

 return tmp;
}
