
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef int u32 ;
typedef int u16 ;
struct udf_sparing_data {int s_packet_len; struct buffer_head** s_spar_map; } ;
struct udf_sb_info {int s_partitions; struct udf_part_map* s_partmaps; } ;
struct TYPE_2__ {struct udf_sparing_data s_sparing; } ;
struct udf_part_map {long s_partition_root; long s_partition_len; TYPE_1__ s_type_specific; } ;
struct super_block {int dummy; } ;
struct sparingTable {struct sparingEntry* mapEntry; int reallocationTableLen; } ;
struct sparingEntry {void* mappedLocation; void* origLocation; } ;
struct buffer_head {scalar_t__ b_data; } ;


 struct udf_sb_info* UDF_SB (struct super_block*) ;
 void* cpu_to_le32 (int) ;
 int le16_to_cpu (int ) ;
 long le32_to_cpu (void*) ;
 int mark_buffer_dirty (struct buffer_head*) ;
 int memmove (struct sparingEntry*,struct sparingEntry*,int) ;
 int udf_update_tag (char*,int) ;

int udf_relocate_blocks(struct super_block *sb, long old_block, long *new_block)
{
 struct udf_sparing_data *sdata;
 struct sparingTable *st = ((void*)0);
 struct sparingEntry mapEntry;
 uint32_t packet;
 int i, j, k, l;
 struct udf_sb_info *sbi = UDF_SB(sb);
 u16 reallocationTableLen;
 struct buffer_head *bh;

 for (i = 0; i < sbi->s_partitions; i++) {
  struct udf_part_map *map = &sbi->s_partmaps[i];
  if (old_block > map->s_partition_root &&
      old_block < map->s_partition_root + map->s_partition_len) {
   sdata = &map->s_type_specific.s_sparing;
   packet = (old_block - map->s_partition_root) &
      ~(sdata->s_packet_len - 1);

   for (j = 0; j < 4; j++)
    if (sdata->s_spar_map[j] != ((void*)0)) {
     st = (struct sparingTable *)
      sdata->s_spar_map[j]->b_data;
     break;
    }

   if (!st)
    return 1;

   reallocationTableLen =
     le16_to_cpu(st->reallocationTableLen);
   for (k = 0; k < reallocationTableLen; k++) {
    struct sparingEntry *entry = &st->mapEntry[k];
    u32 origLoc = le32_to_cpu(entry->origLocation);

    if (origLoc == 0xFFFFFFFF) {
     for (; j < 4; j++) {
      int len;
      bh = sdata->s_spar_map[j];
      if (!bh)
       continue;

      st = (struct sparingTable *)
        bh->b_data;
      entry->origLocation =
       cpu_to_le32(packet);
      len =
        sizeof(struct sparingTable) +
        reallocationTableLen *
        sizeof(struct sparingEntry);
      udf_update_tag((char *)st, len);
      mark_buffer_dirty(bh);
     }
     *new_block = le32_to_cpu(
       entry->mappedLocation) +
           ((old_block -
       map->s_partition_root) &
           (sdata->s_packet_len - 1));
     return 0;
    } else if (origLoc == packet) {
     *new_block = le32_to_cpu(
       entry->mappedLocation) +
           ((old_block -
       map->s_partition_root) &
           (sdata->s_packet_len - 1));
     return 0;
    } else if (origLoc > packet)
     break;
   }

   for (l = k; l < reallocationTableLen; l++) {
    struct sparingEntry *entry = &st->mapEntry[l];
    u32 origLoc = le32_to_cpu(entry->origLocation);

    if (origLoc != 0xFFFFFFFF)
     continue;

    for (; j < 4; j++) {
     bh = sdata->s_spar_map[j];
     if (!bh)
      continue;

     st = (struct sparingTable *)bh->b_data;
     mapEntry = st->mapEntry[l];
     mapEntry.origLocation =
       cpu_to_le32(packet);
     memmove(&st->mapEntry[k + 1],
      &st->mapEntry[k],
      (l - k) *
      sizeof(struct sparingEntry));
     st->mapEntry[k] = mapEntry;
     udf_update_tag((char *)st,
      sizeof(struct sparingTable) +
      reallocationTableLen *
      sizeof(struct sparingEntry));
     mark_buffer_dirty(bh);
    }
    *new_block =
     le32_to_cpu(
           st->mapEntry[k].mappedLocation) +
     ((old_block - map->s_partition_root) &
      (sdata->s_packet_len - 1));
    return 0;
   }

   return 1;
  }
 }

 if (i == sbi->s_partitions) {


  return 1;
 }

 return 0;
}
