
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_super {int osb_lock; struct ocfs2_recovery_map* recovery_map; } ;
struct ocfs2_recovery_map {scalar_t__ rm_used; } ;


 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int ocfs2_recovery_completed(struct ocfs2_super *osb)
{
 int empty;
 struct ocfs2_recovery_map *rm = osb->recovery_map;

 spin_lock(&osb->osb_lock);
 empty = (rm->rm_used == 0);
 spin_unlock(&osb->osb_lock);

 return empty;
}
