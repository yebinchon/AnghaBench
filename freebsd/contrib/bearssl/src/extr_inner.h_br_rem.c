
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int br_divrem (int ,int ,int ,int *) ;

__attribute__((used)) static inline uint32_t
br_rem(uint32_t hi, uint32_t lo, uint32_t d)
{
 uint32_t r;

 br_divrem(hi, lo, d, &r);
 return r;
}
