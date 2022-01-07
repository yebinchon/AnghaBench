
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kmemleak_scan_area {unsigned long offset; size_t length; int node; } ;
struct kmemleak_object {unsigned long size; int lock; int area_list; } ;
typedef int gfp_t ;


 int GFP_KMEMLEAK_MASK ;
 int INIT_HLIST_NODE (int *) ;
 int dump_object_info (struct kmemleak_object*) ;
 struct kmemleak_object* find_and_get_object (unsigned long,int ) ;
 int hlist_add_head (int *,int *) ;
 struct kmemleak_scan_area* kmem_cache_alloc (int ,int) ;
 int kmem_cache_free (int ,struct kmemleak_scan_area*) ;
 int kmemleak_warn (char*,...) ;
 int put_object (struct kmemleak_object*) ;
 int scan_area_cache ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void add_scan_area(unsigned long ptr, unsigned long offset,
     size_t length, gfp_t gfp)
{
 unsigned long flags;
 struct kmemleak_object *object;
 struct kmemleak_scan_area *area;

 object = find_and_get_object(ptr, 0);
 if (!object) {
  kmemleak_warn("Adding scan area to unknown object at 0x%08lx\n",
         ptr);
  return;
 }

 area = kmem_cache_alloc(scan_area_cache, gfp & GFP_KMEMLEAK_MASK);
 if (!area) {
  kmemleak_warn("Cannot allocate a scan area\n");
  goto out;
 }

 spin_lock_irqsave(&object->lock, flags);
 if (offset + length > object->size) {
  kmemleak_warn("Scan area larger than object 0x%08lx\n", ptr);
  dump_object_info(object);
  kmem_cache_free(scan_area_cache, area);
  goto out_unlock;
 }

 INIT_HLIST_NODE(&area->node);
 area->offset = offset;
 area->length = length;

 hlist_add_head(&area->node, &object->area_list);
out_unlock:
 spin_unlock_irqrestore(&object->lock, flags);
out:
 put_object(object);
}
