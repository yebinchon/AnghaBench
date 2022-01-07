
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct audit_watch {int parent; struct audit_watch* path; int rules; int count; } ;


 int WARN_ON (int) ;
 scalar_t__ atomic_dec_and_test (int *) ;
 int kfree (struct audit_watch*) ;
 int list_empty (int *) ;

void audit_put_watch(struct audit_watch *watch)
{
 if (atomic_dec_and_test(&watch->count)) {
  WARN_ON(watch->parent);
  WARN_ON(!list_empty(&watch->rules));
  kfree(watch->path);
  kfree(watch);
 }
}
