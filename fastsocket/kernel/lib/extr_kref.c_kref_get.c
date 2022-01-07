
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kref {int refcount; } ;


 int WARN_ON (int) ;
 int atomic_inc (int *) ;
 int atomic_read (int *) ;
 int smp_mb__after_atomic_inc () ;

void kref_get(struct kref *kref)
{
 WARN_ON(!atomic_read(&kref->refcount));
 atomic_inc(&kref->refcount);
 smp_mb__after_atomic_inc();
}
