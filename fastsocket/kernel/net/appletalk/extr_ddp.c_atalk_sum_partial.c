
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned long atalk_sum_partial(const unsigned char *data,
           int len, unsigned long sum)
{

 while (len--) {
  sum += *data;
  sum <<= 1;
  if (sum & 0x10000) {
   sum++;
   sum &= 0xffff;
  }
  data++;
 }
 return sum;
}
