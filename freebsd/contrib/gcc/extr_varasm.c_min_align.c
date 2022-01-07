
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline unsigned
min_align (unsigned int a, unsigned int b)
{
  return (a | b) & -(a | b);
}
