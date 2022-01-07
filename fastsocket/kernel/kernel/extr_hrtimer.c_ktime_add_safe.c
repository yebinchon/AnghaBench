
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ tv64; } ;
typedef TYPE_1__ ktime_t ;


 int KTIME_SEC_MAX ;
 TYPE_1__ ktime_add (TYPE_1__ const,TYPE_1__ const) ;
 TYPE_1__ ktime_set (int ,int ) ;

ktime_t ktime_add_safe(const ktime_t lhs, const ktime_t rhs)
{
 ktime_t res = ktime_add(lhs, rhs);





 if (res.tv64 < 0 || res.tv64 < lhs.tv64 || res.tv64 < rhs.tv64)
  res = ktime_set(KTIME_SEC_MAX, 0);

 return res;
}
