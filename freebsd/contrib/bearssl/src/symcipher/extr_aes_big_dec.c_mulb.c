
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int mul2 (unsigned int) ;

__attribute__((used)) static unsigned
mulb(unsigned x)
{
 unsigned x2;

 x2 = mul2(x);
 return x ^ x2 ^ mul2(mul2(x2));
}
