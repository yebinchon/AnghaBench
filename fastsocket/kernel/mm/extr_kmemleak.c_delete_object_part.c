
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kmemleak_object {unsigned long pointer; unsigned long size; int min_count; } ;


 int GFP_KERNEL ;
 int __delete_object (struct kmemleak_object*) ;
 int create_object (unsigned long,unsigned long,int ,int ) ;
 struct kmemleak_object* find_and_get_object (unsigned long,int) ;
 int kmemleak_warn (char*,unsigned long,size_t) ;
 int put_object (struct kmemleak_object*) ;

__attribute__((used)) static void delete_object_part(unsigned long ptr, size_t size)
{
 struct kmemleak_object *object;
 unsigned long start, end;

 object = find_and_get_object(ptr, 1);
 if (!object) {




  return;
 }
 __delete_object(object);
 start = object->pointer;
 end = object->pointer + object->size;
 if (ptr > start)
  create_object(start, ptr - start, object->min_count,
         GFP_KERNEL);
 if (ptr + size < end)
  create_object(ptr + size, end - ptr - size, object->min_count,
         GFP_KERNEL);

 put_object(object);
}
