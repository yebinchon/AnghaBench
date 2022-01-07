
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long HOST_BITS_PER_LONG ;
 long double ULONG_MAX ;

__attribute__((used)) static inline size_t
hash1 (const void *p, unsigned long max, unsigned long logmax)
{





  const unsigned long A
    = (ULONG_MAX + 1.0L) * 0.6180339887498948482045868343656381177203L;

  const unsigned long shift = HOST_BITS_PER_LONG - logmax;

  return ((A * (unsigned long) p) >> shift) & (max - 1);
}
