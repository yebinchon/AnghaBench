
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int atomic_t ;


 int schedule () ;

int fscache_wait_atomic_t(atomic_t *p)
{
 schedule();
 return 0;
}
