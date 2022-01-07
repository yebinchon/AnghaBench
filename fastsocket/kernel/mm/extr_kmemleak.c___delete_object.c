
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kmemleak_object {int flags; int lock; int use_count; int object_list; int tree_node; } ;


 int OBJECT_ALLOCATED ;
 int WARN_ON (int) ;
 int atomic_read (int *) ;
 int kmemleak_lock ;
 int list_del_rcu (int *) ;
 int object_tree_root ;
 int prio_tree_remove (int *,int *) ;
 int put_object (struct kmemleak_object*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int write_lock_irqsave (int *,unsigned long) ;
 int write_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void __delete_object(struct kmemleak_object *object)
{
 unsigned long flags;

 write_lock_irqsave(&kmemleak_lock, flags);
 prio_tree_remove(&object_tree_root, &object->tree_node);
 list_del_rcu(&object->object_list);
 write_unlock_irqrestore(&kmemleak_lock, flags);

 WARN_ON(!(object->flags & OBJECT_ALLOCATED));
 WARN_ON(atomic_read(&object->use_count) < 2);





 spin_lock_irqsave(&object->lock, flags);
 object->flags &= ~OBJECT_ALLOCATED;
 spin_unlock_irqrestore(&object->lock, flags);
 put_object(object);
}
