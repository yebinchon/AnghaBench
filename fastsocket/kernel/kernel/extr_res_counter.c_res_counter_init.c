
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct res_counter {struct res_counter* parent; void* soft_limit; void* limit; int lock; } ;


 void* RESOURCE_MAX ;
 int spin_lock_init (int *) ;

void res_counter_init(struct res_counter *counter, struct res_counter *parent)
{
 spin_lock_init(&counter->lock);
 counter->limit = RESOURCE_MAX;
 counter->soft_limit = RESOURCE_MAX;
 counter->parent = parent;
}
