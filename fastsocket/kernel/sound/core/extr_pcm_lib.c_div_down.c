
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int UINT_MAX ;

__attribute__((used)) static inline unsigned int div_down(unsigned int a, unsigned int b)
{
 if (b == 0)
  return UINT_MAX;
 return a / b;
}
