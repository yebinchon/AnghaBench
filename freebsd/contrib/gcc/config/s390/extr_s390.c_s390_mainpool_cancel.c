
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct constant_pool {int dummy; } ;


 int s390_free_pool (struct constant_pool*) ;

__attribute__((used)) static void
s390_mainpool_cancel (struct constant_pool *pool)
{


  s390_free_pool (pool);
}
