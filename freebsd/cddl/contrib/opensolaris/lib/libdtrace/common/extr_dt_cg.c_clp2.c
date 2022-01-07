
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static size_t
clp2(size_t x)
{
 x--;

 x |= (x >> 1);
 x |= (x >> 2);
 x |= (x >> 4);
 x |= (x >> 8);
 x |= (x >> 16);

 return (x + 1);
}
