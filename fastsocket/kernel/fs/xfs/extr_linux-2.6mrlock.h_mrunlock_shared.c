
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mr_lock; } ;
typedef TYPE_1__ mrlock_t ;


 int up_read (int *) ;

__attribute__((used)) static inline void mrunlock_shared(mrlock_t *mrp)
{
 up_read(&mrp->mr_lock);
}
