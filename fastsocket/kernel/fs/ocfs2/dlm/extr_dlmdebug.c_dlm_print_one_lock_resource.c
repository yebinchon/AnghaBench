
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_lock_resource {int spinlock; } ;


 int __dlm_print_one_lock_resource (struct dlm_lock_resource*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void dlm_print_one_lock_resource(struct dlm_lock_resource *res)
{
 spin_lock(&res->spinlock);
 __dlm_print_one_lock_resource(res);
 spin_unlock(&res->spinlock);
}
