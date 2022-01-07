
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct channel_info {int group_count; int group_offsets_lock; TYPE_1__* header; } ;
struct TYPE_2__ {int* group_offsets; } ;


 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int poch_channel_available(struct channel_info *channel)
{
 int i;

 spin_lock_irq(&channel->group_offsets_lock);

 for (i = 0; i < channel->group_count; i++) {
  if (channel->header->group_offsets[i] != -1) {
   spin_unlock_irq(&channel->group_offsets_lock);
   return 1;
  }
 }

 spin_unlock_irq(&channel->group_offsets_lock);

 return 0;
}
