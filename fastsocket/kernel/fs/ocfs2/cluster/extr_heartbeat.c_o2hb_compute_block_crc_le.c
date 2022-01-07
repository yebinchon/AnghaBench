
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct o2hb_region {int hr_block_bytes; } ;
struct o2hb_disk_heartbeat_block {int hb_cksum; } ;
typedef int __le32 ;


 int crc32_le (int ,unsigned char*,int ) ;

__attribute__((used)) static u32 o2hb_compute_block_crc_le(struct o2hb_region *reg,
         struct o2hb_disk_heartbeat_block *hb_block)
{
 __le32 old_cksum;
 u32 ret;




 old_cksum = hb_block->hb_cksum;
 hb_block->hb_cksum = 0;

 ret = crc32_le(0, (unsigned char *) hb_block, reg->hr_block_bytes);

 hb_block->hb_cksum = old_cksum;

 return ret;
}
