
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 scalar_t__ less_eq (int ,int ) ;

__attribute__((used)) static inline u32 lesser(u32 left, u32 right)
{
 return less_eq(left, right) ? left : right;
}
