
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct prio_tree_node {unsigned long start; unsigned long last; } ;
struct kmemleak_object {int flags; unsigned long pointer; size_t size; int min_count; int count; int object_list; int lock; struct prio_tree_node tree_node; int trace; int trace_len; int comm; scalar_t__ pid; int jiffies; int use_count; int area_list; int gray_list; } ;
typedef int gfp_t ;
struct TYPE_2__ {char* comm; scalar_t__ pid; } ;


 int GFP_KMEMLEAK_MASK ;
 int INIT_HLIST_HEAD (int *) ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_PRIO_TREE_NODE (struct prio_tree_node*) ;
 int OBJECT_ALLOCATED ;
 int OBJECT_NEW ;
 int __save_stack_trace (int ) ;
 int atomic_set (int *,int) ;
 TYPE_1__* current ;
 int dump_object_info (struct kmemleak_object*) ;
 scalar_t__ in_irq () ;
 scalar_t__ in_softirq () ;
 int jiffies ;
 struct kmemleak_object* kmem_cache_alloc (int ,int) ;
 int kmemleak_lock ;
 int kmemleak_stop (char*,...) ;
 int list_add_tail_rcu (int *,int *) ;
 struct kmemleak_object* lookup_object (unsigned long,int) ;
 int max (int ,unsigned long) ;
 int max_addr ;
 int min (int ,unsigned long) ;
 int min_addr ;
 int object_cache ;
 int object_list ;
 int object_tree_root ;
 struct prio_tree_node* prio_tree_insert (int *,struct prio_tree_node*) ;
 int spin_lock (int *) ;
 int spin_lock_init (int *) ;
 int spin_unlock (int *) ;
 int strncpy (int ,char*,int) ;
 int write_lock_irqsave (int *,unsigned long) ;
 int write_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static struct kmemleak_object *create_object(unsigned long ptr, size_t size,
          int min_count, gfp_t gfp)
{
 unsigned long flags;
 struct kmemleak_object *object;
 struct prio_tree_node *node;

 object = kmem_cache_alloc(object_cache, gfp & GFP_KMEMLEAK_MASK);
 if (!object) {
  kmemleak_stop("Cannot allocate a kmemleak_object structure\n");
  return ((void*)0);
 }

 INIT_LIST_HEAD(&object->object_list);
 INIT_LIST_HEAD(&object->gray_list);
 INIT_HLIST_HEAD(&object->area_list);
 spin_lock_init(&object->lock);
 atomic_set(&object->use_count, 1);
 object->flags = OBJECT_ALLOCATED | OBJECT_NEW;
 object->pointer = ptr;
 object->size = size;
 object->min_count = min_count;
 object->count = -1;
 object->jiffies = jiffies;


 if (in_irq()) {
  object->pid = 0;
  strncpy(object->comm, "hardirq", sizeof(object->comm));
 } else if (in_softirq()) {
  object->pid = 0;
  strncpy(object->comm, "softirq", sizeof(object->comm));
 } else {
  object->pid = current->pid;






  strncpy(object->comm, current->comm, sizeof(object->comm));
 }


 object->trace_len = __save_stack_trace(object->trace);

 INIT_PRIO_TREE_NODE(&object->tree_node);
 object->tree_node.start = ptr;
 object->tree_node.last = ptr + size - 1;

 write_lock_irqsave(&kmemleak_lock, flags);

 min_addr = min(min_addr, ptr);
 max_addr = max(max_addr, ptr + size);
 node = prio_tree_insert(&object_tree_root, &object->tree_node);






 if (node != &object->tree_node) {
  kmemleak_stop("Cannot insert 0x%lx into the object search tree "
         "(already existing)\n", ptr);
  object = lookup_object(ptr, 1);
  spin_lock(&object->lock);
  dump_object_info(object);
  spin_unlock(&object->lock);

  goto out;
 }
 list_add_tail_rcu(&object->object_list, &object_list);
out:
 write_unlock_irqrestore(&kmemleak_lock, flags);
 return object;
}
