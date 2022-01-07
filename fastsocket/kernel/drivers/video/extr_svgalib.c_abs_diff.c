
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;



__attribute__((used)) static inline u32 abs_diff(u32 a, u32 b)
{
 return (a > b) ? (a - b) : (b - a);
}
