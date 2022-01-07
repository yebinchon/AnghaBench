
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static long
getconstant (long x, int nbits)
{


  return (x & ((((1 << (nbits - 1)) - 1) << 1) | 1));
}
