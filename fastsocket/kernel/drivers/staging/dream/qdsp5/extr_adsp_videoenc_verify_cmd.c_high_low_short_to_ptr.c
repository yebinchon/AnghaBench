
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline void *high_low_short_to_ptr(unsigned short high,
       unsigned short low)
{
 return (void *)((((unsigned long)high) << 16) | ((unsigned long)low));
}
