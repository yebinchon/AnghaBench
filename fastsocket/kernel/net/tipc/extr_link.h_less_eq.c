
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 unsigned int mod (scalar_t__) ;

__attribute__((used)) static inline int less_eq(u32 left, u32 right)
{
 return (mod(right - left) < 32768u);
}
