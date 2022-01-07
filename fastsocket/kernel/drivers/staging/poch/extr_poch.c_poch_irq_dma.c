
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned long u32 ;
struct poch_group_info {int user_offset; } ;
struct channel_info {unsigned long transfer; scalar_t__ chno; unsigned long fpga_iomem; long group_count; int wq; int group_offsets_lock; struct poch_group_info* groups; TYPE_1__* header; int inited; } ;
typedef int s32 ;
struct TYPE_2__ {int * group_offsets; } ;


 scalar_t__ CHNO_RX_CHANNEL ;
 unsigned long FPGA_RX_CURR_GROUP_REG ;
 unsigned long FPGA_TX_CURR_GROUP_REG ;
 int atomic_read (int *) ;
 unsigned long ioread32 (unsigned long) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static void poch_irq_dma(struct channel_info *channel)
{
 u32 prev_transfer;
 u32 curr_transfer;
 long groups_done;
 unsigned long i, j;
 struct poch_group_info *groups;
 s32 *group_offsets;
 u32 curr_group_reg;

 if (!atomic_read(&channel->inited))
  return;

 prev_transfer = channel->transfer;

 if (channel->chno == CHNO_RX_CHANNEL)
  curr_group_reg = FPGA_RX_CURR_GROUP_REG;
 else
  curr_group_reg = FPGA_TX_CURR_GROUP_REG;

 curr_transfer = ioread32(channel->fpga_iomem + curr_group_reg);

 groups_done = curr_transfer - prev_transfer;

 if (groups_done <= 0)
  groups_done += channel->group_count;

 group_offsets = channel->header->group_offsets;
 groups = channel->groups;

 spin_lock(&channel->group_offsets_lock);

 for (i = 0; i < groups_done; i++) {
  j = (prev_transfer + i) % channel->group_count;
  group_offsets[j] = groups[j].user_offset;
 }

 spin_unlock(&channel->group_offsets_lock);

 channel->transfer = curr_transfer;

 wake_up_interruptible(&channel->wq);
}
