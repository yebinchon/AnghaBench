
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_super {size_t max_slots; int osb_lock; struct ocfs2_recovery_map* recovery_map; } ;
struct ocfs2_recovery_map {size_t rm_used; unsigned int* rm_entries; } ;


 int BUG_ON (int) ;
 scalar_t__ __ocfs2_recovery_map_test (struct ocfs2_super*,unsigned int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int ocfs2_recovery_map_set(struct ocfs2_super *osb,
      unsigned int node_num)
{
 struct ocfs2_recovery_map *rm = osb->recovery_map;

 spin_lock(&osb->osb_lock);
 if (__ocfs2_recovery_map_test(osb, node_num)) {
  spin_unlock(&osb->osb_lock);
  return 1;
 }


 BUG_ON(rm->rm_used >= osb->max_slots);

 rm->rm_entries[rm->rm_used] = node_num;
 rm->rm_used++;
 spin_unlock(&osb->osb_lock);

 return 0;
}
