
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ __u32 ;



__attribute__((used)) static inline int value_index(__u32 value, __u32 *array, int size)
{
 int i;

 for (i=0; i < size; i++)
  if (array[i] == value)
   break;
 return i;
}
