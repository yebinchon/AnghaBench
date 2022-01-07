
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int NOT (int) ;

__attribute__((used)) static inline uint32_t
EQ(uint32_t x, uint32_t y)
{
 uint32_t q;

 q = x ^ y;
 return NOT((q | -q) >> 31);
}
