
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; } ;


 int NR_LOCKS ;
 TYPE_1__* atomic64_lock ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int init_atomic64_lock(void)
{
 int i;

 for (i = 0; i < NR_LOCKS; ++i)
  spin_lock_init(&atomic64_lock[i].lock);
 return 0;
}
