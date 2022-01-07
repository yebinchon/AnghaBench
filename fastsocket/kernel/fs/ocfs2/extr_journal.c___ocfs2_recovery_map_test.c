
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_super {int osb_lock; struct ocfs2_recovery_map* recovery_map; } ;
struct ocfs2_recovery_map {int rm_used; unsigned int* rm_entries; } ;


 int assert_spin_locked (int *) ;

__attribute__((used)) static int __ocfs2_recovery_map_test(struct ocfs2_super *osb,
         unsigned int node_num)
{
 int i;
 struct ocfs2_recovery_map *rm = osb->recovery_map;

 assert_spin_locked(&osb->osb_lock);

 for (i = 0; i < rm->rm_used; i++) {
  if (rm->rm_entries[i] == node_num)
   return 1;
 }

 return 0;
}
