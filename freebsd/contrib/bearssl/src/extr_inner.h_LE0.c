
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef scalar_t__ int32_t ;



__attribute__((used)) static inline uint32_t
LE0(int32_t x)
{
 uint32_t q;






 q = (uint32_t)x;
 return (q | ~-q) >> 31;
}
