
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int mul2 (unsigned int) ;

__attribute__((used)) static unsigned
muld(unsigned x)
{
 unsigned x4;

 x4 = mul2(mul2(x));
 return x ^ x4 ^ mul2(x4);
}
