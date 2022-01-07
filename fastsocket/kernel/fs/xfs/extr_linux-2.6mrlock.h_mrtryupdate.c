
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mr_writer; int mr_lock; } ;
typedef TYPE_1__ mrlock_t ;


 int down_write_trylock (int *) ;

__attribute__((used)) static inline int mrtryupdate(mrlock_t *mrp)
{
 if (!down_write_trylock(&mrp->mr_lock))
  return 0;



 return 1;
}
