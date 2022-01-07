
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kmemleak_object {int flags; int rcu; int use_count; } ;


 int OBJECT_ALLOCATED ;
 int WARN_ON (int) ;
 int atomic_dec_and_test (int *) ;
 int call_rcu (int *,int ) ;
 int free_object_rcu ;

__attribute__((used)) static void put_object(struct kmemleak_object *object)
{
 if (!atomic_dec_and_test(&object->use_count))
  return;


 WARN_ON(object->flags & OBJECT_ALLOCATED);

 call_rcu(&object->rcu, free_object_rcu);
}
