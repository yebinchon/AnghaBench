
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef scalar_t__ __s32 ;


 int rt_sernum ;

__attribute__((used)) static __inline__ u32 fib6_new_sernum(void)
{
 u32 n = ++rt_sernum;
 if ((__s32)n <= 0)
  rt_sernum = n = 1;
 return n;
}
