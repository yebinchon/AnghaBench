
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kref {int refcount; } ;


 int WARN_ON (int) ;
 scalar_t__ atomic_dec_and_test (int *) ;
 scalar_t__ kfree ;

int kref_put(struct kref *kref, void (*release)(struct kref *kref))
{
 WARN_ON(release == ((void*)0));
 WARN_ON(release == (void (*)(struct kref *))kfree);

 if (atomic_dec_and_test(&kref->refcount)) {
  release(kref);
  return 1;
 }
 return 0;
}
