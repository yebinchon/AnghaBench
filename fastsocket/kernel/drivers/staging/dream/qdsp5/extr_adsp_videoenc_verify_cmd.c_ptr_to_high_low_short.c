
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline void ptr_to_high_low_short(void *ptr, unsigned short *high,
      unsigned short *low)
{
 *high = (unsigned short)((((unsigned long)ptr) >> 16) & 0xffff);
 *low = (unsigned short)((unsigned long)ptr & 0xffff);
}
