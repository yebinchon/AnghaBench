
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __uint64_t ;
typedef int __uint32_t ;


 int do_div (int ,int) ;

__attribute__((used)) static inline __uint64_t howmany_64(__uint64_t x, __uint32_t y)
{
 x += y - 1;
 do_div(x, y);
 return x;
}
