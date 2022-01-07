
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kmemleak_object {int dummy; } ;


 int get_object (struct kmemleak_object*) ;
 int kmemleak_lock ;
 struct kmemleak_object* lookup_object (unsigned long,int) ;
 unsigned long max_addr ;
 unsigned long min_addr ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int read_lock_irqsave (int *,unsigned long) ;
 int read_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static struct kmemleak_object *find_and_get_object(unsigned long ptr, int alias)
{
 unsigned long flags;
 struct kmemleak_object *object = ((void*)0);

 rcu_read_lock();
 read_lock_irqsave(&kmemleak_lock, flags);
 if (ptr >= min_addr && ptr < max_addr)
  object = lookup_object(ptr, alias);
 read_unlock_irqrestore(&kmemleak_lock, flags);


 if (object && !get_object(object))
  object = ((void*)0);
 rcu_read_unlock();

 return object;
}
