
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct poch_group_info {int user_offset; } ;
struct channel_info {int group_count; scalar_t__ dir; struct poch_group_info* groups; TYPE_1__* header; int group_offsets_lock; int group_size; } ;
typedef int s32 ;
struct TYPE_2__ {int group_count; int* group_offsets; int group_size_bytes; } ;


 scalar_t__ CHANNEL_DIR_RX ;
 int spin_lock_init (int *) ;

__attribute__((used)) static void poch_channel_init_header(struct channel_info *channel)
{
 int i;
 struct poch_group_info *groups;
 s32 *group_offsets;

 channel->header->group_size_bytes = channel->group_size;
 channel->header->group_count = channel->group_count;

 spin_lock_init(&channel->group_offsets_lock);

 group_offsets = channel->header->group_offsets;
 groups = channel->groups;

 for (i = 0; i < channel->group_count; i++) {
  if (channel->dir == CHANNEL_DIR_RX)
   group_offsets[i] = -1;
  else
   group_offsets[i] = groups[i].user_offset;
 }
}
