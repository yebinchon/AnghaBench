
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kref {int refcount; } ;


 int atomic_set (int *,int) ;
 int smp_mb () ;

void kref_set(struct kref *kref, int num)
{
 atomic_set(&kref->refcount, num);
 smp_mb();
}
