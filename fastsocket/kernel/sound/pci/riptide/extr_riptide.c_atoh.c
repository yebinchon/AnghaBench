
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;



__attribute__((used)) static u32 atoh(const unsigned char *in, unsigned int len)
{
 u32 sum = 0;
 unsigned int mult = 1;
 unsigned char c;

 while (len) {
  c = in[len - 1];
  if ((c >= '0') && (c <= '9'))
   sum += mult * (c - '0');
  else if ((c >= 'A') && (c <= 'F'))
   sum += mult * (c - ('A' - 10));
  else if ((c >= 'a') && (c <= 'f'))
   sum += mult * (c - ('a' - 10));
  mult *= 16;
  --len;
 }
 return sum;
}
