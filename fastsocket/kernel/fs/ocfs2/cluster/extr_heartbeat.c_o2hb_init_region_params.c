
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct o2hb_region {int hr_slots_per_page; int hr_block_bits; int hr_timeout_ms; int hr_block_bytes; int hr_blocks; int hr_start_block; } ;


 int ML_HEARTBEAT ;
 int O2HB_REGION_TIMEOUT_MS ;
 int PAGE_CACHE_SIZE ;
 int mlog (int ,char*,int ,...) ;
 int o2hb_dead_threshold ;

__attribute__((used)) static void o2hb_init_region_params(struct o2hb_region *reg)
{
 reg->hr_slots_per_page = PAGE_CACHE_SIZE >> reg->hr_block_bits;
 reg->hr_timeout_ms = O2HB_REGION_TIMEOUT_MS;

 mlog(ML_HEARTBEAT, "hr_start_block = %llu, hr_blocks = %u\n",
      reg->hr_start_block, reg->hr_blocks);
 mlog(ML_HEARTBEAT, "hr_block_bytes = %u, hr_block_bits = %u\n",
      reg->hr_block_bytes, reg->hr_block_bits);
 mlog(ML_HEARTBEAT, "hr_timeout_ms = %u\n", reg->hr_timeout_ms);
 mlog(ML_HEARTBEAT, "dead threshold = %u\n", o2hb_dead_threshold);
}
