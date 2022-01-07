
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_super {int max_slots; int osb_lock; struct ocfs2_replay_map* replay_map; } ;
struct ocfs2_replay_map {int rm_slots; int* rm_replay_slots; int rm_state; } ;


 int ENOENT ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int REPLAY_UNNEEDED ;
 struct ocfs2_replay_map* kzalloc (int,int ) ;
 int mlog_errno (int) ;
 int ocfs2_slot_to_node_num_locked (struct ocfs2_super*,int,int*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int ocfs2_compute_replay_slots(struct ocfs2_super *osb)
{
 struct ocfs2_replay_map *replay_map;
 int i, node_num;


 if (osb->replay_map)
  return 0;

 replay_map = kzalloc(sizeof(struct ocfs2_replay_map) +
        (osb->max_slots * sizeof(char)), GFP_KERNEL);

 if (!replay_map) {
  mlog_errno(-ENOMEM);
  return -ENOMEM;
 }

 spin_lock(&osb->osb_lock);

 replay_map->rm_slots = osb->max_slots;
 replay_map->rm_state = REPLAY_UNNEEDED;


 for (i = 0; i < replay_map->rm_slots; i++) {
  if (ocfs2_slot_to_node_num_locked(osb, i, &node_num) == -ENOENT)
   replay_map->rm_replay_slots[i] = 1;
 }

 osb->replay_map = replay_map;
 spin_unlock(&osb->osb_lock);
 return 0;
}
