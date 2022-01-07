
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct o2hb_region {int hr_blocks; struct o2hb_disk_slot* hr_slots; } ;
struct o2hb_disk_slot {void* ds_last_generation; void* ds_last_time; scalar_t__ ds_raw_block; } ;
struct o2hb_disk_heartbeat_block {int hb_generation; int hb_seq; } ;


 void* le64_to_cpu (int ) ;
 int mlog_entry_void () ;
 int mlog_errno (int) ;
 int mlog_exit (int) ;
 int o2hb_read_slots (struct o2hb_region*,int) ;

__attribute__((used)) static int o2hb_populate_slot_data(struct o2hb_region *reg)
{
 int ret, i;
 struct o2hb_disk_slot *slot;
 struct o2hb_disk_heartbeat_block *hb_block;

 mlog_entry_void();

 ret = o2hb_read_slots(reg, reg->hr_blocks);
 if (ret) {
  mlog_errno(ret);
  goto out;
 }





 for(i = 0; i < reg->hr_blocks; i++) {
  slot = &reg->hr_slots[i];
  hb_block = (struct o2hb_disk_heartbeat_block *) slot->ds_raw_block;



  slot->ds_last_time = le64_to_cpu(hb_block->hb_seq);
  slot->ds_last_generation = le64_to_cpu(hb_block->hb_generation);
 }

out:
 mlog_exit(ret);
 return ret;
}
