
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;


 int BUG_ON (int) ;
 scalar_t__ div64_u64 (scalar_t__,scalar_t__) ;

__attribute__((used)) static inline u64 scaled_div(u64 a, u64 b)
{
 BUG_ON(b == 0);
 return div64_u64(a * 1000000, b);
}
