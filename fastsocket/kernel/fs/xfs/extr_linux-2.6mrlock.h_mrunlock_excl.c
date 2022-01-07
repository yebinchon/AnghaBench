
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mr_lock; scalar_t__ mr_writer; } ;
typedef TYPE_1__ mrlock_t ;


 int up_write (int *) ;

__attribute__((used)) static inline void mrunlock_excl(mrlock_t *mrp)
{



 up_write(&mrp->mr_lock);
}
