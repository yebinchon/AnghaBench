
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lock; } ;
struct TYPE_4__ {TYPE_1__ driver_lock; } ;


 int slic_debug_init () ;
 scalar_t__ slic_first_init ;
 TYPE_2__ slic_global ;
 int spin_lock_init (int *) ;

__attribute__((used)) static void slic_init_driver(void)
{
 if (slic_first_init) {
  slic_first_init = 0;
  spin_lock_init(&slic_global.driver_lock.lock);
  slic_debug_init();
 }
}
