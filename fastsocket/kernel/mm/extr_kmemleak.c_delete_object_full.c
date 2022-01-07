
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kmemleak_object {int dummy; } ;


 int __delete_object (struct kmemleak_object*) ;
 struct kmemleak_object* find_and_get_object (unsigned long,int ) ;
 int kmemleak_warn (char*,unsigned long) ;
 int put_object (struct kmemleak_object*) ;

__attribute__((used)) static void delete_object_full(unsigned long ptr)
{
 struct kmemleak_object *object;

 object = find_and_get_object(ptr, 0);
 if (!object) {




  return;
 }
 __delete_object(object);
 put_object(object);
}
