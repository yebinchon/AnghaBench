
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int spinlock_t ;
struct TYPE_2__ {int lock; } ;


 TYPE_1__* kretprobe_table_locks ;

__attribute__((used)) static spinlock_t *kretprobe_table_lock_ptr(unsigned long hash)
{
 return &(kretprobe_table_locks[hash].lock);
}
