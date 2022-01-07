
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;



__attribute__((used)) static int
high_order_bit(uint64_t n)
{
 int count;

 for (count = 0; n != 0; count++)
  n >>= 1;
 return (count);
}
