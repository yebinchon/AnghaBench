
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;



__attribute__((used)) static inline uint32_t
NEQ(uint32_t x, uint32_t y)
{
 uint32_t q;

 q = x ^ y;
 return (q | -q) >> 31;
}
