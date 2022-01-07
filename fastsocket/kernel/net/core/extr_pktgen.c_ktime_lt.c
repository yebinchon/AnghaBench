
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ tv64; } ;
typedef TYPE_1__ ktime_t ;



__attribute__((used)) static inline int ktime_lt(const ktime_t cmp1, const ktime_t cmp2)
{
 return cmp1.tv64 < cmp2.tv64;
}
