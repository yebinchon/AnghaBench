
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;


 scalar_t__ fls (int ) ;

__attribute__((used)) static inline int top_bit(unsigned int bits)
{
 if (bits == 0)
  return -1;
 else
  return (int)fls((int32_t)bits)-1;
}
