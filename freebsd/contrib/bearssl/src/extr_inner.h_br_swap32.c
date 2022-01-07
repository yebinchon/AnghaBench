
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;



__attribute__((used)) static inline uint32_t
br_swap32(uint32_t x)
{
 x = ((x & (uint32_t)0x00FF00FF) << 8)
  | ((x >> 8) & (uint32_t)0x00FF00FF);
 return (x << 16) | (x >> 16);
}
