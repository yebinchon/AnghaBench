
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kmemleak_object {int lock; } ;


 int EINVAL ;
 int dump_object_info (struct kmemleak_object*) ;
 struct kmemleak_object* find_and_get_object (unsigned long,int ) ;
 int pr_info (char*,unsigned long) ;
 int put_object (struct kmemleak_object*) ;
 unsigned long simple_strtoul (char const*,int *,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int dump_str_object_info(const char *str)
{
 unsigned long flags;
 struct kmemleak_object *object;
 unsigned long addr;

 addr= simple_strtoul(str, ((void*)0), 0);
 object = find_and_get_object(addr, 0);
 if (!object) {
  pr_info("Unknown object at 0x%08lx\n", addr);
  return -EINVAL;
 }

 spin_lock_irqsave(&object->lock, flags);
 dump_object_info(object);
 spin_unlock_irqrestore(&object->lock, flags);

 put_object(object);
 return 0;
}
