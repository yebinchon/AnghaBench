
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ __u32 ;
typedef int __u16 ;



__attribute__((used)) static inline int value_lower_bits(__u32 value, __u32 *array, int size, __u16 *field)
{
 int i;
 __u16 mask = 0x1;
 __u16 result = 0x0;

 for (i=0; i < size; i++) {

  result |= mask;
  mask <<= 1;

  if (array[i] >= value)
   break;
 }

 if(i >= size)
   i = size - 1;
 *field = result;
 return i;
}
