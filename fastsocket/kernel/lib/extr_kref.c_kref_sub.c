
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kref {int refcount; } ;


 int WARN_ON (int) ;
 scalar_t__ atomic_sub_and_test (int,int *) ;
 scalar_t__ kfree ;

int kref_sub(struct kref *kref, unsigned int count,
      void (*release)(struct kref *kref))
{
 WARN_ON(release == ((void*)0));
 WARN_ON(release == (void (*)(struct kref *))kfree);

 if (atomic_sub_and_test((int) count, &kref->refcount)) {
  release(kref);
  return 1;
 }
 return 0;
}
